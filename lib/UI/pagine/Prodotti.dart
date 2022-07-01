import 'package:flutter/material.dart';

class Prodotti extends StatefulWidget {
  const Prodotti({ Key? key }) : super(key: key);

  @override
  State<Prodotti> createState() => _ProdottiState();
}

class _ProdottiState extends State<Prodotti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prodotti'),
      ),
    );
  }
}