import 'package:flutter/material.dart';
import 'package:travel_ui/details/DestinationDetail.dart';
import 'package:travel_ui/home/BottomNavigationBarTravel.dart';
import 'package:travel_ui/models/HotDestinaltion.dart';
import 'package:travel_ui/utils/TextWidget.dart';
import 'package:travel_ui/utils/constant.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          decoration: BoxDecoration(
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
            children: [
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: destination.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: destinationCard(context, destination[index]['imagePath']!),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Hot Destination',
                      size: 24,
                      color: Color(0xFF64889F)
                    ),
                    TextWidget(
                      text: 'More',
                      size: 16,
                      color: Colors.white30,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotDestinations.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: hotDestinationCard(hotDestinations[index],context ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Visiter Reviews',
                      size: 20,
                      color: Color(0xFF64889F)
                    ),
                    TextWidget(
                      text: '22 Reviews',
                      size: 14,
                     color: Colors.white30,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Container(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('assets/images/man.jpeg'),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                text: 'Punithraj M N',
                                size: 16,
                                color: Color(0xFF435b61),
                              ),
                              TextWidget(
                                text: 'Jan 25',
                                size: 16,
                                color: Color(0xFF435b61),
                              )
                            ],
                          ),
                          SizedBox(height: kDefaultPadding,),
                          TextWidget(
                            text:'The Taj Mahal is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra',
                            size: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.white38
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),

      floatingActionButton: BottomNavigationBarTravel(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () => {},
            icon: const Icon(Icons.home),
          ),
          ActionButton(
            onPressed: () =>{},
            icon: const Icon(Icons.place),
          ),
          ActionButton(
            onPressed: () => {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: secondaryColor,
      elevation: 0,
      title: TextWidget(
        text: 'Destination',
        size: 32,
        fontWeight: FontWeight.w700,
        color: Color(0xFFa3ebec),
      ),
      flexibleSpace: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [secondaryColor,secondaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
      ),
      actions: <Widget>[
        RawMaterialButton(
          constraints: BoxConstraints(minWidth: 0),
          onPressed: (){},
          elevation: 2.0,
          fillColor: Color(0xFF212861),
          padding: EdgeInsets.all(8),
          child: Icon(Icons.search_rounded,color: Color(0xFF5f78a6),size: 25,),
          shape: CircleBorder(),
        )
      ],
    );
  }

  Widget hotDestinationCard(HotDestinations hotDest, BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DestinationDetail(hotDest: hotDest,)))
      },
      child: Stack(children: [
        Hero(
          tag: hotDest.image,
          child: Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(hotDest.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [secondaryColor, Colors.transparent]),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                    text: hotDest.placeName,
                    size: 15,
                    fontWeight: FontWeight.w800),
                SizedBox(height: 4),
                TextWidget(
                    text: hotDest.placeCount+" Tourist place",
                    color: Colors.white54,
                    size: 10,
                    fontWeight: FontWeight.w800)
              ]),
        ),
      ]),
    );
  }

  Widget destinationCard(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () => {},
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Opacity(
              opacity: 0.7,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [secondaryColor, Colors.transparent],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
