import 'package:flutter/material.dart';

class Profilo extends StatefulWidget {
  const Profilo({ Key? key }) : super(key: key);

  @override
  State<Profilo> createState() => _ProfiloState();
}

class _ProfiloState extends State<Profilo> {
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
        FlatButton(
          onPressed: () {},
          child: Row(
            children: [],
          ))
      ],
    );
  }
}