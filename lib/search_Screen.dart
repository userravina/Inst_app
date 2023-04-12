import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search....',
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.black),
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta1.jpeg"),
                    Photos("assets/images/insta2.jpeg"),
                    Photos("assets/images/insta3.jpeg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta8.jpg"),
                    Photos("assets/images/insta7.jpeg"),
                    Photos("assets/images/insta4.jpeg"),

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta6.jpeg"),
                    Photos("assets/images/insta9.jpeg"),
                    Photos("assets/images/insta10.jpeg"),

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/insta11.jpg"),
                    Photos("assets/images/insta12.jpeg"),
                    Photos("assets/images/insta13.jpeg"),
                  ],),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/z1.jpeg"),
                    Photos("assets/images/z2.jpeg"),
                    Photos("assets/images/z3.jpeg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/z4.jpeg"),
                    Photos("assets/images/z5.jpeg"),
                    Photos("assets/images/z6.jpeg"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/images/z7.jpeg"),
                    Photos("assets/images/z8.jpeg"),
                    Photos("assets/images/z9.jpeg"),
                  ],),



              ],)
            ],
          ),
        ),
      ),
    );
  }

  Widget Photos(String iphoto)
  {
    return Container(
        height: 150,
        width: 110,
        child: Image.asset("$iphoto",fit: BoxFit.cover),
        decoration: BoxDecoration(border: Border.all(color: Colors.pink.shade50,width: 2))
    );
  }

}