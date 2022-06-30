import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class MyPackage extends StatefulWidget {
  const MyPackage({ Key? key }) : super(key: key);

  @override
  State<MyPackage> createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Image.asset(
          "assets/white.png",
          fit: BoxFit.contain,
          height: 60,
    ),
          toolbarHeight: 75,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
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
            icon: Icon(Icons.apps),
            title: Text('Link'),
            inactiveColor: Colors.orange,
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
           BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Impostazioni'),
            inactiveColor: Colors.orange,
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
           BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Gestione Account'),
            inactiveColor: Colors.orange,
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          ],
          )
      );
  }
}