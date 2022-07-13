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
      child: CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[800],
            width: 500,
            height: 500,
            child: const Text('SALDO DISPONIBILE',
                   style: TextStyle(
                    fontSize: 24,
                    color: Colors.amber
                   ),
                  ),
          ),
          Container(
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
        ],
      ),
    ),
  ],
)

    );
  }
}