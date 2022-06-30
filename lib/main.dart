import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
          "assets/white.png",
          fit: BoxFit.contain,
          height: 60,
    ),
          toolbarHeight: 75,
          backgroundColor: Colors.black,
          centerTitle: true
        ),
      ),
    );
  }
}