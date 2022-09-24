import 'package:flutter/material.dart';

class merch extends StatelessWidget {
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      //ListDelegate: 
         // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 50),
          child: Align(
            heightFactor: 0.7,
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  height: 140,
                  width: 140,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,10),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/tshirt.png'),
                    ),
                  ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800,
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(5.0, 6.0),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.white,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}