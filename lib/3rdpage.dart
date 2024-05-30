import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right:20,top: 20),
            child: Container(
              width: 370,
              height: 50,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x4C646E77)),
                      borderRadius: BorderRadius.circular(12))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.search_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(width: 250,height:100 ,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Categories , Products",),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 290,top: 20),
            child: Text('Popular',
              style: TextStyle(
                color: Color(0xFF252837),
                fontSize: 20,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220,top: 20),
            child: Text(  'Apple MacBook Pro\nBeats3\nApple Watch\nSpeakers\nHarman Kardon\nAirPods3',
              style: TextStyle(
                color: Color(0xFF585858),
                fontSize: 17,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w400,
                height: 2,
              ),),
          )

        ],
      ),
    );
  }
}
