import 'package:flutter/material.dart';
import 'package:travel_ui/utils/TextWidget.dart';
import 'package:travel_ui/utils/constant.dart';

class ExpandedSection extends StatefulWidget {
  final Widget child;
  final bool expand;

  ExpandedSection({this.expand = false, required this.child});

  @override
  _ExpandedSectionState createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandedSection>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.easeInOut,
      reverseCurve: Curves.easeInOut,
    );
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axisAlignment: 1.0, sizeFactor: animation, child: widget.child);
  }
}
  

class HotDestinationCard extends StatefulWidget {
  final Map tourist;

  const HotDestinationCard({Key? key, required this.tourist}) : super(key: key);
  @override
  _HotDestinationCard createState() => _HotDestinationCard();
}

class _HotDestinationCard extends State<HotDestinationCard> {
  bool _expand = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _expand = !_expand;
        });
      },
      child: Row(children: [Stack(children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(widget.tourist["image"]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [secondaryColor, Colors.transparent]),
            ),
          ),
        ),
      ]),
      Visibility(child: 
      ExpandedSection(
          child: Container(
            margin: EdgeInsets.only(left: kDefaultPadding,),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [secondaryColor, Colors.transparent]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: widget.tourist["name"],
                  fontWeight: FontWeight.bold,
                  color: Colors.white38,
                  size: 16
                ),
                Text(
                  widget.tourist["description"],
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white38,
                    fontSize: 12
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 7,
                )
              ],
            )
          ),
          expand: _expand,
        ),
        visible: _expand,
      )
      ])
    );
  }
}
