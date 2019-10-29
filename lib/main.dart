import 'package:flutter/material.dart';
import 'TampilSyarat.dart';
import 'TampilDefinsi.dart';
import 'TampilManasik.dart';
import 'TampilMiqat.dart';
import 'TampilSyariat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Colors.green,
          canvasColor: Colors.greenAccent,
          appBarTheme: AppBarTheme(color: Colors.green, elevation: 0)),
      home: HomeUtama(),
    );
  }
}

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Adab Bertetangga'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline)
              , onPressed: () {

                AlertDialog(
                  title: Text('Tentang Saya'),
                  content: new Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildAboutMe()
                    ],
                  ),
                  actions: <Widget>[
                    new FlatButton(
                        onPressed: (){
                          Navigator.of(context);
                        },
                        child: const Text('Close'))
                  ],
                );
              }),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
        body: Column(
          children: <Widget>[
            Text('Tuntunan Puasa',style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            ListView(
              children: <Widget>[
                _itemMenuUtama(context, "Definsi Haji", TampilDefinsi()),
                _itemMenuUtama(context, "Dalil Pensya'riatan", TampilSyariat()),
                _itemMenuUtama(context, "Syarat-Syarat Haji", TampilSyarat()),
                _itemMenuUtama(context, 'Jenis Manasik Haji', TampilManasik())
              ],
            )
          ],
        )
    );
  }
}

Widget _itemMenuUtama (BuildContext context, String judul, Widget tampilan) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 8.0) ,
      child: Container(
        child: Card(
          elevation: 1.0 ,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,
        ),
      )
  );
}

Widget _buildAboutMe() {
  return new RichText(
      text: new TextSpan(
          text: 'Hai Perkenalkan Nama Saya Muhammad Azhar najib dan saya tinggal di depok, saya lahir tanggal 18 Oktober 2005',
          style: const TextStyle(color: Colors.black),
          children: <TextSpan>[
            const TextSpan(text: 'dan juga azhar memiliki beberapa hobi yang agak aneh')
          ]
      ));
}

void openNewSreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}