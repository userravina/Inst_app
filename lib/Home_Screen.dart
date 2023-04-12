import 'package:flutter/material.dart';
import 'package:inst_app/insta_Screen.dart';
import 'like_Screen.dart';
import 'profile_Screen.dart';
import 'search_Screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int i = 0;
Color c2 = Colors.black87;
Color c1 = Colors.pink;

Color i_home = c1;
Color i_search = c2, i_profile = c2, i_like = c2;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: Container(
              height: 60,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(onTap: () {
                    setState(() {
                      i = 0;
                      i_home = c1;
                      i_search = c2;
                      i_like = c2;
                      i_profile = c2;
                    });
                  },
                      child: Icon(Icons.home_outlined,size: 30,color: i_home)),
                  GestureDetector(onTap: () {
                    setState(() {
                      i = 1;
                      i_home = c2;
                      i_search = c1;
                      i_like = c2;
                      i_profile = c2;
                    });
                  },
                      child: Icon(Icons.search,size: 30,color: i_search)),
                  GestureDetector(onTap: () {
                    setState(() {
                      i = 2;
                      i_home = c2;
                      i_search = c2;
                      i_like = c1;
                      i_profile = c2;
                    });
                  },
                      child: Icon(Icons.favorite_outline_rounded,size: 30,color: i_like)),
                  GestureDetector(onTap: () {
                    setState(() {
                      i = 3;
                      i_home = c2;
                      i_search = c2;
                      i_like = c2;
                      i_profile = c1;
                    });
                  },
                      child: Icon(Icons.person_outline_rounded,size: 30,color: i_profile)),
                ],
              ),
            ),
            backgroundColor: Colors.pink.shade50,
            body: Column(
              children: [
                Expanded(
                  child: IndexedStack(
                    index: i,
                    children: [
                      Insta_Screen(),
                      SearchScreen(),
                      Like_Screen(),
                      Profile_Screen(),
                      // home search like profile
                    ],
                  ),
                ),
              ],
            )

        )
    );
  }


}