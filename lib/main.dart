import 'package:flutter/material.dart';
import 'package:inst_app/Home_Screen.dart';




void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        "/" : (context) => HomeScreen(),
      },
    ),
  );
}