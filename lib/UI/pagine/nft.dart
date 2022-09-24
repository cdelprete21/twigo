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
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: ListTile(
                title: Text(data[index]),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/cd.png'),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}