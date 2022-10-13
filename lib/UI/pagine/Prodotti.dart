import 'package:flutter/material.dart';

class Prodotti extends StatefulWidget {
  const Prodotti({ Key? key }) : super(key: key);

  @override
  _ProdottiState createState() => _ProdottiState();
}

class _ProdottiState extends State<Prodotti> {
  bool? value = false;
  bool? valueW = false;
  bool? valueC = false;
  bool? valueU = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Nome Prodotto',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Inserisci il nome del prodotto...',
                    fillColor: Colors.grey[800],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Massimo 60 caratteri. Non modificabile.',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 10,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                  child: Text(
                    'Descrizione',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Inserisci una descrizione...',
                    fillColor: Colors.grey[800],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                  child: Text(
                    'Sesso',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: Text(
                    'Uomo',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.black,
                  activeColor: Colors.orange,
                  checkColor: Colors.white,
                  value: value,
                  onChanged: (bool? newValue){
                    setState(() {
                       value = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  title: Text(
                    'Donna',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.black,
                  activeColor: Colors.orange,
                  checkColor: Colors.white,
                  value: valueW,
                  onChanged: (bool? newValue1){
                    setState(() {
                       valueW = newValue1;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  title: Text(
                    'Bambino',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.black,
                  activeColor: Colors.orange,
                  checkColor: Colors.white,
                  value: valueC,
                  onChanged: (bool? newValue2){
                    setState(() {
                       valueC = newValue2;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  title: Text(
                    'Unisex',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.black,
                  activeColor: Colors.orange,
                  checkColor: Colors.white,
                  value: valueU,
                  onChanged: (bool? newValue3){
                    setState(() {
                       valueU = newValue3;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                  child: Text(
                    'Prezzo',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: '€',
                    fillColor: Colors.grey[800],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}