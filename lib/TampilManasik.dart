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
          manasikItem('Ifrad', 'Ifrad merupakan salah satu dari jenis manasik haji yang hanya berihram untuk haji tanpa dibarengi dengan umroh,maka seorang yang memilih jenis manasik ini harus berniat untuk haji saja, kemudian pergi ke Makkah dan ber-thawaf qudum, apabila telah ber-thawaf maka dia tetap berpakaian ihram dan dalam keadaan muhrim sampai hari nahar (tanggal 10 Dzul hijah dan tidak dibebani hadyu (sembelihan),serta tidak ber-Sai kecuali sekali dan umrohnya dapat dilakukan pada perjalanan yang lainnya.'),
          manasikItem('Tamattu`', 'Tamatu’ adalah berihram untuk umrah di bulan-bulan haji setelah itu berihram untuk haji pada tahun itu juga. Dalam hal ini diwajibkan baginya untuk menyembelih hadyu (sembelihan). Oleh karena itu setelah thawaf dan sa’i dia mencukur rambut dan pada tanggal 8 Dzul Hijjah berihram untuk haji.'),
          manasikItem('Qiran', 'Qiran adalah berihram untuk umrah dan haji sekaligus, dan membawa hadyu (sembelhan) sebagaimana yang dicontohkan Rasulullah Shallallahu’alaihi Wasallam'),
        ],
      ),
    );
  }
}

Widget manasikItem(String judul, String detail) {
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