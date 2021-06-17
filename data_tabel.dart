import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.grey,
      appBar: AppBar(
        backgroundColor : Colors.redAccent,
        title: Text('DATA KELOMPOK PPKM NYUCIIN 2021'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Kelompok ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('NIRM')),
            DataColumn(label: Text('NAMA LENGKAP')),
            DataColumn(label: Text('JURUSAN')),
            DataColumn(label: Text('KELAS')),
            DataColumn(label: Text('STAMBUK')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('2018020096')),
              DataCell(Text('Putri Febrianty')),
              DataCell(Text('Sistem Informasi')),
              DataCell(Text('6SIA6')),
              DataCell(Text('2018')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020140')),
              DataCell(Text('Ade Panji Gusmara')),
              DataCell(Text('Sistem Informasi')),
              DataCell(Text('6SIA5')),
              DataCell(Text('2018')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020096')),
              DataCell(Text('Septian Dwi Arya')),
              DataCell(Text('Sistem Informasi')),
              DataCell(Text('6SIA10')),
              DataCell(Text('2018')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020032')),
              DataCell(Text('Sidik Pangestu')),
              DataCell(Text('Sistem Informasi')),
              DataCell(Text('6SIA10')),
              DataCell(Text('2018')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020062')),
              DataCell(Text('Vica Fadilla')),
              DataCell(Text('Sistem Informasi')),
              DataCell(Text('6SIA12')),
              DataCell(Text('2018')),
            ]),
          ],
        ),
      ]),
    );
  }
}
