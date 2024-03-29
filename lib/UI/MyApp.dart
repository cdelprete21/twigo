import 'package:Twigo/UI/MyPackage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.orange,
        unselectedWidgetColor: Colors.grey[700],
      ),
      debugShowCheckedModeBanner: false,
      home: MyPackage(),
    );
  }
}