import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Page4 extends StatefulWidget {
  final String txt;
  final dynamic price;
  final String image;

  const Page4(
      {super.key, required this.txt, required this.price, required this.image});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Stack(
        children:[ CarouselSlider.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
              Container(
            width: 500,
            height: 40,
            color: Colors.white,
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
          options: CarouselOptions(
            height: 300,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),TextButton(onPressed: (){Navigator.of(context).pop();},
            child: Padding(
              padding: const EdgeInsets.only(right: 10,top: 20),
              child: Icon(Icons.arrow_back),
            ))
        ],
              ),
              Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Text(
          widget.txt,
          style: TextStyle(color: Color(0xFF1B1B1B), fontSize: 20, height: 2),
        ),
              ),
              Padding(
        padding: const EdgeInsets.only(left: 20, top: 5),
        child: Row(
          children: [
            RatingBar.builder(
              itemSize: 30,
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Text(
              '3.8   |',
              style: TextStyle(
                color: Color(0xFF646E77),
                fontSize: 13,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: -0.13,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "137 Reviews",
                style: TextStyle(
                  color: Color(0xFF3572AA),
                  fontSize: 13,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
              ),
              SizedBox(
        height: 20,
              ),
              Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          widget.price,
          style: TextStyle(color: Color(0xFF1B1B1B), fontSize: 30),
        ),
              ),
              Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 60),
        child: Divider(
          height: 1.50,
          thickness: 1,
        ),
              ),
              SizedBox(height: 25,),
              Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          " Description",
          style: TextStyle(
            color: Color(0xFF252837),
            fontSize: 25,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: -0.18,
          ),
        ),
              ),
              Padding(
        padding: const EdgeInsets.only(left: 15,top: 10),
        child: Text(
          'Connection Type : Wireless\nBluetooth Connection : Yes\nWater Resistance: No\nNFC (Near Field Communication): Yes',
          style: TextStyle(
              color: Color(0xFF252837),
              fontSize: 18,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w400,
              height: 2.5),
        ),
              ),

            ],
          ),bottomSheet: Container(height: 70,color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(backgroundColor: Colors.white,radius: 30,
              child: Icon(Icons.favorite,size: 40,),),
          ),
          SizedBox(width: 50,),
          Container(
            width: 245,
            height: 50,
            decoration: ShapeDecoration(
              color: Color(0xFF00C170),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90),
              ),
            ),

            child: Center(
              child: Text(
                'ADD TO BASKET',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w900,
                  height: 0,
                  letterSpacing: -0.13,
                ),
              ),
            ),
          )
        ],
      ),
              ),
    );
  }
}
