import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Impostazioni extends StatefulWidget {
  const Impostazioni({ Key? key }) : super(key: key);

  @override
  State<Impostazioni> createState() => _ImpostazioniState();
}

class _ImpostazioniState extends State<Impostazioni> {
  @override
  Widget build(BuildContext context) {

    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(left: 16, top: 25, right: 16),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
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
            buildAccountOptionRow(context, "Email"),
            buildAccountOptionRow(context, "Nome"),
            buildAccountOptionRow(context, "Password"),
            buildAccountOptionRow(context, "Privacy & Security"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.orange,
                ),
                SizedBox(width: 8,),
                Text(
                  "Notifications",
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
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("Suoneria", true),
            buildNotificationOptionRow("Vibrazione", false),
            buildAccountOptionRow(context, "Priorità notifiche"),
            SizedBox(
              height: 50,
            ),
            Center(
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
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
              Transform.scale(
                scale: 0.7,
                child: CupertinoSwitch(
                  value: isActive,
                  onChanged: (bool val) {},
                ),
              ),
            ],
          );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
          onTap: (){
            showDialog(
              context: context, builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Option 1"),
                      Text("Option 2"),
                      Text("Option 3"),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("Close"),
                    ),
                  ],
                );
              });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
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
        );
  }
}