import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: const Sium(),
      ),
    );
  }
}

class Sium extends StatefulWidget {
  const Sium({ Key? key }) : super(key: key);

  @override
  State<Sium> createState() => _SiumState();
}

class _SiumState extends State<Sium> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
            height: 200,
            color: Colors.blue,
          ),
        ),
        Flexible(
          child: Container(
            height: 200,
            color: Colors.yellow,
          ),
        ),
        Flexible(
          child: Container(
            height: 200,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
/* Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.grey,
        alignment: Alignment.center,
        child: const Text('Saldo disponibile'),
        constraints: const BoxConstraints.expand(height: 200),
      );*/