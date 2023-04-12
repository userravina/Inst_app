import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Insta_Screen extends StatefulWidget {
  const Insta_Screen({Key? key}) : super(key: key);

  @override
  State<Insta_Screen> createState() => _Insta_ScreenState();
}

class _Insta_ScreenState extends State<Insta_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink.shade50,
        title: Text(
          "Instagram",
          style: GoogleFonts.pacifico(fontSize: 25,color: Colors.black),
        ),
        actions: [
          Icon(Icons.add_box_outlined,size: 30 ,color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.chat_outlined,size: 30, color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.pink.shade50,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Status('assets/images/insta1.jpeg'),
                      SizedBox(width: 5),
                      Status('assets/images/insta2.jpeg'),
                      SizedBox(width: 5),
                      Status('assets/images/insta3.jpeg'),
                      SizedBox(width: 5),
                      Status('assets/images/insta6.jpeg'),
                      SizedBox(width: 5),
                      Status('assets/images/insta15.jpeg'),
                      SizedBox(width: 5),
                      Status('assets/images/insta8.jpg'),
                      SizedBox(width: 5),
                      Status('assets/images/insta7.jpeg'),
                      SizedBox(width: 5),
                      Status('assets/images/insta4.jpeg'),
                      SizedBox(width: 5),
                      Status('assets/images/insta9.jpeg'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Post("assets/images/insta1.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta8.jpg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta3.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/z7.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/z8.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta6.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta13.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta14.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta9.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta10.jpeg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta11.jpg"),
                    SizedBox(height: 5),
                    Post("assets/images/insta12.jpeg"),
                  ],
                ),
              ),
            )

            // Post(photo[1]),
            // Post(photo[2]),
          ],
        ),
      ),
    );
  }

  Widget Post(String iphoto) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "$iphoto",
          height: 350,
          width: 200,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Icon(Icons.favorite, size: 30,color: Colors.red),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10,left: 10),child: Icon(Icons.add_comment_outlined, size: 30)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Icon(Icons.near_me_outlined, size: 30),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10),child: Icon(Icons.bookmark_border_outlined, size: 30))
            ],
          ),
        )
      ],
    );
  }

  Widget Status(String a)
  {
    return Container(
      height: 80,width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(shape: BoxShape.circle,gradient: LinearGradient(colors: [Colors.yellowAccent,Colors.red,Colors.pink]),),
      child: Container(width: 76,height: 76,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white)),child: CircleAvatar(radius: 35,backgroundImage: AssetImage("$a"),),),
      //CircleAvatar(radius: 40,backgroundImage: AssetImage("$ihigh"),),
    );
  }

}