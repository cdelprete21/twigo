import 'package:flutter/material.dart';
import 'package:Twigo/UI/pagine/cd.dart';
import 'package:Twigo/UI/pagine/merch.dart';
import 'package:Twigo/UI/pagine/ticket.dart';
import 'package:Twigo/UI/pagine/nft.dart';
import 'package:Twigo/UI/pagine/info.dart';

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

class _SiumState extends State<Sium> with SingleTickerProviderStateMixin{
  Widget build(BuildContext context) {

    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return DefaultTabController(
      length: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 71,
              backgroundColor: Colors.orange,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/leD3.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
              child: ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: Text(
                    "SIGN OUT",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      letterSpacing: 2.2,
                      
                    ),
                  ),
                ),
            ),
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                      'CD',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                ),
                Tab(
                  child: Text(
                      'MERCH',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                ),
                Tab(
                  child: Text(
                      'TICKET',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                ),
                Tab(
                  child: Text(
                      'NFT',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                ),
                Tab(
                  child: Text(
                      'INFO',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  cd(),
                  merch(),
                  ticket(),
                  nft(),
                  info(),
                ],
              ),
            ),
          ], 
        ),
      ),
    );
  }
}