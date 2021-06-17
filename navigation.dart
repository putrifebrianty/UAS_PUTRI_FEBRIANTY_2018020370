import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title : 'Routing Navigation',
    initialRoute : '/',
    routes : {
      '/' : (context) => Menu(),
      HalamanPertama.routeName : (context) => HalamanPertama(),
      HalamanKedua.routeName : (context) => HalamanKedua(),
      HalamanKetiga.routeName : (context) => HalamanKetiga(),
 
    },
  ));
}

class Menu extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.purpleAccent,
      appBar : AppBar(
        backgroundColor : Colors.purpleAccent,
        title : Text ('UAS MOBILE 2 PUTRI FEBRIANTY'),
      ),
      body : Center(
        child : GridView.count(
          crossAxisCount: 3,
            children:<Widget>[RaisedButton(
              child : Text ('DAFTAR RIWAYAT HIDUP'),
              color: Colors.transparent,
              onPressed: (){

                Navigator.pushNamed(context, HalamanPertama.routeName);
              },
            ),
            RaisedButton(
              child : Text('CONTACT PERSON'),
              color: Colors.redAccent,
              onPressed : (){

                Navigator.pushNamed(context, HalamanKedua.routeName);
              },
            ),
            RaisedButton(
              child : Text('RIWAYAT PENDIDIKAN'),
              color: Colors.deepPurpleAccent,
              onPressed : (){

                Navigator.pushNamed(context, HalamanKetiga.routeName);
              },
            ),
           
              
            
          ],
        ),
      ),
    );
  }
}
class HalamanPertama extends StatelessWidget {
  static const String routeName = "/halamanPertama";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      backgroundColor : Colors.grey,
      appBar : AppBar(
        backgroundColor : Colors.purpleAccent,
        title : Text("DAFTAR RIWAYAT HIDUP"),
      ),
      body: Column(
          children : <Widget>[
            Text('Nirm              : 2018020370'),
            Text('Nama              : Putri Febrianty'),
            Text('Kelas             : 6SIA6'),
            Text('Jurusan           : Sistem Informasi'), 
            Text('Stambuk           : 2018'),
            Text('Jenis Kelamin     : Perempuan'),
            Text('Tempat/Tgl. Lahir : Tanjung Morawa, 09 Februari 2000'),
            Text('Status            : Belum Menikah'),
            Text('Alamat            : Jl. Sultan Serdang Dusun IV Gg. Tambak Rejo Kecamatan Tanjung Morawa'),
            Text('Agama             : Islam'),
            Text('Kewarganegaraan   : Indonesia'),
          ]
          
        ),
      
    );
  }
}
class HalamanKedua extends StatelessWidget {
  static const String routeName = "/halamanKedua";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      backgroundColor : Colors.grey,
      appBar : AppBar(
        backgroundColor : Colors.redAccent,
        title : Text("CONTACT PERSON"),
      ),
      body: Column(
          children : <Widget>[
            Text('Email     : putrifebrianty320@gmail.com'),
        Text('Instagram : putrifeebriantyy'),
        Text('Facebook  : Putri Febrianty'), 
        Text('Whatsapp  : 087893380058'),
        Text('No Telpon : 087893380058'),

          ]
          
        ),
      
    );
  }
}
class HalamanKetiga extends StatelessWidget {
  static const String routeName = "/halamanKetiga";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      backgroundColor : Colors.grey,
      appBar : AppBar(
        backgroundColor : Colors.deepPurpleAccent,
        title : Text("RIWAYAT PENDIDIKAN"),
      ),
     body: Column(
          children : <Widget>[
            Text('TK      : TK Bhayangkari 2 Tanjung Morawa'),
            Text('SD      : SD Negeri 101878 Tanjung Morawa'),
            Text('SMP     : SMP Dwi Tunggal Tanjung Morawa'),
            Text('SMA     : SMA Negeri 2 Tanjung Morawa'), 
            Text('KULIAH  : STMIK TRIGUNA DHARMA Medan'),

          ]
          
        ),
      
    );
  }
}
