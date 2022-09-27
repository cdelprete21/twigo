import 'package:flutter/material.dart';

class Impostazioni extends StatefulWidget {
  const Impostazioni({ Key? key }) : super(key: key);

  @override
  State<Impostazioni> createState() => _ImpostazioniState();
}

class _ImpostazioniState extends State<Impostazioni> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(left: 16, top: 25, right: 16),
      child: ListView(
        children: [
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.orange,
              ),
              SizedBox(width: 8,),
              Text(
                "Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[900],
            height: 15,
            thickness: 2,
          ),
          GestureDetector(
            onTap: (){
              showDialog(
                context: context, builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Cambia password"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Option 1"),
                        Text("Option 2"),
                        Text("Option 3"),
                      ],
                    ),
                    actions: [
                      FlatButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: Text("Close"),
                      ),
                    ],
                  );
                });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cambia password",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}