import 'package:flutter/material.dart';
import 'package:travel_ui/models/HotDestinaltion.dart';
import 'package:travel_ui/utils/TextWidget.dart';
import 'package:travel_ui/utils/constant.dart';

class DestinationDetail extends StatefulWidget {
  final HotDestinations hotDest;
  DestinationDetail({Key? key, required this.hotDest}) : super(key: key);

  @override
  _DestinationDetailState createState() => _DestinationDetailState();
}

class _DestinationDetailState extends State<DestinationDetail> with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return DestinationPage(
      controller: _controller,
      hotDest: widget.hotDest,
    );
  }
}

class DestinationPage extends StatelessWidget {
  final HotDestinations hotDest;
  final DestinationPageEnterAnimation animation;
  DestinationPage({
    Key? key, 
    required AnimationController controller, 
    required this.hotDest
  })
    : animation = DestinationPageEnterAnimation(controller),
    super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation.controller,
      builder: (context, child) => _buildAnimation(context),
    );
  }

  Hero _buildAnimation(BuildContext context) {
    return Hero(
      tag: hotDest.image,
      child: Scaffold(
        body: SingleChildScrollView(
          child:Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(hotDest.image),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => {Navigator.pop(context)},
                          icon: Icon(
                            Icons.chevron_left,
                            color: Colors.white70,
                            size: 40,
                          ),
                        ),
                        RawMaterialButton(
                          onPressed: null,
                          shape: CircleBorder(),
                          child: Icon(
                            Icons.info,
                            color: Colors.white38,
                            size: 40,
                          ),
                          padding: EdgeInsets.all(8),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child:Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              secondaryColor,
                              tertiaryColor,
                            ]
                          )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: hotDest.placeName,
                              size: 24
                            ),
                            SizedBox(height: kDefaultPadding),
                            Text(
                              hotDest.description,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 6,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.white38
                              ),
                            ),
                            SizedBox(height: kDefaultPadding,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children:[
                                TextWidget(
                                  text: 'Tourist Places',
                                  size: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                TextWidget(
                                  text: hotDest.placeCount,
                                  size: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white24
                                ),
                              ]
                            ),
                            SizedBox(height: kDefaultPadding,),
                            Container(
                              height: 200,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: hotDest.destinationImages.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                                  child: hotDestinationCard(hotDest.destinationImages[index],context ),
                                )
                              )   
                            ),
                            SizedBox(height: kDefaultPadding),
                            SizedBox(height: kDefaultPadding),
                          ]     
                        ),
                      )
                    )
                  ],
                ),
              ),
            ],
          )
        ),
        floatingActionButton: ButtonTheme(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: MediaQuery.of(context).size.width / 1.1, height: 50),
            child: ElevatedButton(
              child: Text(
                "Select location",
                style: TextStyle(fontSize: 20)
              ),
              style:ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: () => {}
            ),
          ),
        ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget hotDestinationCard(String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Stack(children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(imagePath),
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
    );
  }
}

class DestinationPageEnterAnimation {
  DestinationPageEnterAnimation(this.controller)
       : barHeight = Tween<double>(begin: 0, end: 500).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0, 0.5),
          ),
        );

  final AnimationController controller;
  final Animation<double> barHeight;
}
