import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

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
      home: MyPackage(),
    );
  }
}

class MyPackage extends StatefulWidget {
  const MyPackage({ Key? key }) : super(key: key);

  @override
  State<MyPackage> createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      );
  }
}