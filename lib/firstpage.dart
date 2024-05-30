import 'package:flutter/material.dart';
import 'package:newapp/second.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4),(){
      Navigator.of(context).push(MaterialPageRoute(builder:(_)=>Page2()));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Colors.red,
      body: Center(
        child: Text( 'LETRO',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w900,
            height: 0,
            letterSpacing: 5.22,
          ),
        ),
      ),

    );
  }
}
