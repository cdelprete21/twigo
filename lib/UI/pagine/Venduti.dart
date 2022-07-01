import 'package:flutter/material.dart';

class Venduti extends StatefulWidget {
  const Venduti({ Key? key }) : super(key: key);

  @override
  State<Venduti> createState() => _VendutiState();
}

class _VendutiState extends State<Venduti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Venduti'),
      ),
    );
  }
}