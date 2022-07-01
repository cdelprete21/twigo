import 'package:flutter/material.dart';

class Gestione extends StatefulWidget {
  const Gestione({ Key? key }) : super(key: key);

  @override
  State<Gestione> createState() => _GestioneState();
}

class _GestioneState extends State<Gestione> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestione'),
      ),
    );
  }
}