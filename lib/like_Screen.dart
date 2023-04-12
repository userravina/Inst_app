import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Like_Screen extends StatefulWidget {
  const Like_Screen({Key? key}) : super(key: key);

  @override
  State<Like_Screen> createState() => _Like_ScreenState();
}

class _Like_ScreenState extends State<Like_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Text("Notifications", style:  GoogleFonts.pacifico(fontSize: 20,color: Colors.black),),
                ],),
              SizedBox(height: 10),
              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Notes("narendra modi", "", 10, "assets/images/insta1.jpeg"),
                  Notes("anuushka sen", "", 50, "assets/images/insta2.jpeg"),
                  Notes("Utkarsh sharma", "", 1000, "assets/images/insta3.jpeg"),
                  Notes("Dora", "", 60, "assets/images/insta4.jpeg"),
                  Notes("tom and jerry", "", 50, "assets/images/insta5.jpeg"),
                  Notes("dipika padukon", "", 950, "assets/images/insta6.jpeg"),
                  Notes("virat kohli", "", 70, "assets/images/insta7.jpeg"),
                  Notes("rashmika mandanna", "", 10, "assets/images/insta8.jpg"),
                  Notes("alia bhatt", "", 50, "assets/images/insta9.jpeg"),
                  Notes("sharddha kapoor", "", 1000, "assets/images/insta10.jpeg"),
                  Notes("kiara advani", "", 60, "assets/images/insta11.jpg"),
                  Notes("yash", "", 50, "assets/images/insta12.jpeg"),
                  Notes("ritika roshan", "", 950, "assets/images/insta13.jpeg"),
                  Notes("madhuri dixit", "", 70, "assets/images/insta14.jpeg"),
                  Notes("nora fatehi", "", 60, "assets/images/insta15.jpeg"),
                ],
              ),

            ],

          ),
        ),
      ),


    );
  }

  Widget Notes( String person1, String person2, int no, String iphoto)
  {
    return Container(
      height: 70,
      child: Row( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "$iphoto",
            width: 60,
            height: 60,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 15),
          RichText(text: TextSpan(children: [
            TextSpan(text: "$person1 \n",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
            TextSpan(text: " others liked your photo.",style: TextStyle(fontSize: 15,color: Colors.black)),
          ],))
        ],
      ),
    );
  }
}