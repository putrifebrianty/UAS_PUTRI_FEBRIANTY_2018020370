import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  //deklarasi variabel
  final txtkodesnack = TextEditingController();
  final txtnamasnack = TextEditingController();
  final txthargasnack = TextEditingController();
  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Icon(Icons.circle),
        title: Text(txtkodesnack.text),
        subtitle: Text(txtnamasnack.text),
        trailing: Text(txthargasnack.text),
        
      ));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
          backgroundColor : Colors.redAccent,
            appBar: new AppBar(title: Text("SNACKKU")),
            body: new ListView(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextField(
                        controller: txtkodesnack,
                        decoration: InputDecoration(hintText: 'Kode Snack'),
                      ),
                      TextField(
                        controller: txtnamasnack,
                        decoration: InputDecoration(hintText: 'Nama Snack'),
                      ),
                      TextField(
                        controller: txthargasnack,
                        decoration: InputDecoration(hintText: 'Harga Snack'),
                      ),
                      RaisedButton(child: Text("TAMBAH DATA"), onPressed: onTambah),
                    ],
                  ),
                ),
                new Column(
                  // Isi List View
                  children: data,
                )
              ],
            )));
  }
}
