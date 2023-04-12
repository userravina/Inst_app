import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade50,
        elevation: 0,
        leading: Icon(Icons.lock_outline_rounded, color: Colors.black),
        title: Text("Devloper",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.add_box_outlined, color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.menu_rounded, color: Colors.black),
          )
        ],
      ),backgroundColor: Colors.pink.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage("assets/images/image3.jpeg"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "    flutter_dev",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Info(10, "Posts"),
                Info(700, "Followers"),
                Padding(padding: EdgeInsets.only(right: 10),child: Info(225, "Following"))
              ],
            ),  // Profile
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 250,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.black12),
                      child: Text("Edit profile",style: TextStyle(color: Colors.black,fontSize: 15),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.black12),
                      child: Icon(Icons.person,color: Colors.black,size: 20,),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlights('assets/images/insta1.jpeg'),
                    SizedBox(width: 5),
                    Highlights('assets/images/insta2.jpeg'),
                    SizedBox(width: 5),
                    Highlights('assets/images/insta3.jpeg'),
                    SizedBox(width: 5),
                    Highlights('assets/images/insta6.jpeg'),
                    SizedBox(width: 5),
                    Highlights('assets/images/insta15.jpeg'),
                    SizedBox(width: 5),
                    Highlights('assets/images/insta8.jpg'),
                    SizedBox(width: 5),
                    Highlights('assets/images/insta7.jpeg'),
                    SizedBox(width: 5),
                    Highlights('assets/images/insta4.jpeg'),
                    SizedBox(width: 5),
                    Highlights('assets/images/insta9.jpeg'),
                  ],
                ),
              ),
            ),
            Row(children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 30,
                              width: 150,
                              alignment: Alignment.center,
                              child: Icon(Icons.grid_on_sharp)),
                          Container(height: 30,
                              width: 150,
                              alignment: Alignment.center,
                              child: Icon(Icons.assignment_ind_outlined)),

                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Photos("assets/images/insta1.jpeg"),
                          Photos("assets/images/insta2.jpeg"),
                          Photos("assets/images/insta3.jpeg"),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Photos("assets/images/insta8.jpg"),
                          Photos("assets/images/insta7.jpeg"),
                          Photos("assets/images/insta4.jpeg"),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Photos("assets/images/insta6.jpeg"),
                          Photos("assets/images/insta9.jpeg"),
                          Photos("assets/images/insta10.jpeg"),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Photos("assets/images/insta11.jpg"),
                          Photos("assets/images/insta12.jpeg"),
                          Photos("assets/images/insta13.jpeg"),
                        ],),
                    ),
                  ],
                ),
              )
            ],),



          ],
        ),
      ),
    );
  }

  Widget Info(int number, String name) {
    return Column(
      children: [
        Text("$number",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("$name", style: TextStyle(fontSize: 15)),
      ],
    );
  }

  Widget Photos(String iphoto)
  {
    return Container(
        height: 110,
        width: 110,
        child: Image.asset("$iphoto",fit: BoxFit.cover,),
        decoration: BoxDecoration(border: Border.all(color: Colors.pink.shade50,width: 2))
    );
  }

  Widget Highlights(String ihigh)
  {
    return Container(
      height: 80,width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(shape: BoxShape.circle,gradient: LinearGradient(colors: [Colors.yellowAccent,Colors.pinkAccent]),),
      child: Container(width: 76,height: 76,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white)),child: CircleAvatar(radius: 35,backgroundImage: AssetImage("$ihigh"),),),
      //CircleAvatar(radius: 40,backgroundImage: AssetImage("$ihigh"),),
    );
  }

}