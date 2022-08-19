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
    return Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[800],
            width: 350,
            height: 150,
            child: Column(
              children: <Widget>[
                const Text('SALDO DISPONIBILE',
                   style: TextStyle(
                    fontSize: 24,
                    color: Colors.amber
                   ),
                  ),
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      boxShadow: [
                        BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        ),
                      ],
                    ),
                  child: Row(
                    children: <Widget>[RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "0,00 €".toUpperCase(),
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          )
                        ),
                      ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /*Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[800],
            child: const Text('PROFITTO MENSILE',
                   style: TextStyle(
                    fontSize: 24,
                    color: Colors.amber
                   ),
                  ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[800],
            child: const Text('VISUALIZZAZIONI MENSILI',
                   style: TextStyle(
                    fontSize: 24,
                    color: Colors.amber
                   ),
                  ),
          ),
*/
      );
  }
}