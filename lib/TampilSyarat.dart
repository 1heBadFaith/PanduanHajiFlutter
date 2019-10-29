import 'package:flutter/material.dart';

class TampilSyarat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Syarat Haji'),
      ),

      body: PageView(
        children: <Widget>[
          syaratItem('Pertama', 'Islam'),
          syaratItem('Kedua', 'Berakal'),
          syaratItem('Ketiga', 'Baligh'),
          syaratItem('Keempat', 'Memiliki Kemampuan Perbekalan dan Kendaraan'),
          syaratItem('Kelima', 'Merdeka atau Bebas')
        ],
      ),
    );
  }
}

Widget syaratItem(String judul, String detail) {
  return ListView(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          judul,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          textAlign: TextAlign.right,
        ),
      ),
      SizedBox(
        height: 40.0,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          detail,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0, height: 0.5),
          textAlign: TextAlign.justify,
        ),
      ),
    ],
  );
}