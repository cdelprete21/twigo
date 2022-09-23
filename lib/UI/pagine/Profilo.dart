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
    return Column(
      children: [
        SizedBox(
          height : 115,
          width : 115,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/leD3.png"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            color: Colors.grey[500],
            height: 30,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {},
            child: Text(
              "SEGUI"
            ),
          ),
        ),
      ], 
    );
  }
}