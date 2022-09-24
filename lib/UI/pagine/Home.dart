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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 180,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(20)
            ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(21, 15, 10, 12),
                    child: Text(
                      "SALDO DISPONIBILE",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35),
                    child: Text(
                      "75,00€",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 180,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(20)
            ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 10, 12),
                    child: Text(
                      "PROFITTO MENSILE",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35),
                    child: Text(
                      "300,00€",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 180,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(20)
            ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 15, 10, 12),
                    child: Text(
                      "VISUALIZZAZIONI MENSILI",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35),
                    child: Text(
                      "21",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ),
      ],
    );
  }
}