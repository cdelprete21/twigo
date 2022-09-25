import 'package:flutter/material.dart';

class nft extends StatelessWidget {
  final List<String> data = [
    'one',
    'two',
    'three',
  ];

  final List imglst = [
    Image.asset('assets/cd.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 175,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Material(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/cd.png"),
                          )
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 120,
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        children: [
                          Text(data[index],
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}