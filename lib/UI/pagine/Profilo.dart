import 'package:flutter/material.dart';

class Profilo extends StatefulWidget {
  const Profilo({ Key? key }) : super(key: key);

  @override
  State<Profilo> createState() => _ProfiloState();
}

class _ProfiloState extends State<Profilo> {
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 76,
            backgroundColor: Colors.orange,
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage("assets/leD3.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
            child: FlatButton(
              color: Colors.orange,
              height: 30,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              onPressed: () {},
              child: Text(
                "SEGUI",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TabBar(
            tabs: [
              Tab(
                child: Text(
                  "ciao",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "ciao",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "ciao",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "ciao",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ], 
      ),
    );
  }
}