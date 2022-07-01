import 'dart:io';

import 'package:Twigo/UI/pagine/Gestione.dart';
import 'package:Twigo/UI/pagine/Impostazioni.dart';
import 'package:Twigo/UI/pagine/LinkPage.dart';
import 'package:Twigo/UI/pagine/Prodotti.dart';
import 'package:Twigo/UI/pagine/Venduti.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class MyPackage extends StatefulWidget {
  const MyPackage({ Key? key }) : super(key: key);

  @override
  State<MyPackage> createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  int currentIndex = 0;
  final screens = [
    Prodotti(),
    Venduti(),
    LinkPage(),
    Gestione(),
    Impostazioni(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Image.asset(
          "assets/white.png",
          fit: BoxFit.contain,
          height: 50,
          width: 90,
    ),
          toolbarHeight: 70,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.black,
          selectedIndex: currentIndex,
          onItemSelected: (index){
            setState(() {
              currentIndex = index;
            });
          },
          items: <BottomNavyBarItem>[
           BottomNavyBarItem(
            icon: 
              Image.asset(
                "assets/imieiprodotti.png",
                width: 30,
                height: 30,
                ),
            title: Text('Prodotti'),
            inactiveColor: Colors.orange,
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon:
                Image.asset(
                "assets/prodottivenduti.png",
                width: 30,
                height: 30,
                ),
            title: Text('Venduti'),
            inactiveColor: Colors.orange,
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
           BottomNavyBarItem(
            icon:
                Image.asset(
                "assets/link.png",
                width: 30,
                height: 30,
                ),
            title: Text('Link'),
            inactiveColor: Colors.orange,
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
           BottomNavyBarItem(
            icon:
                Image.asset(
                "assets/artisti.png",
                width: 30,
                height: 30,
                ),
            title: Text('Gestione Account'),
            inactiveColor: Colors.orange,
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
           BottomNavyBarItem(
            icon:
                Image.asset(
                "assets/impostazioni.png",
                width: 30,
                height: 30,
                ),
            title: Text('Impostazioni'),
            inactiveColor: Colors.orange,
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          ],
          ),
      );
  }
}