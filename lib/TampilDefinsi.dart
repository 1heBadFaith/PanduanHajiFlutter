import 'package:flutter/material.dart';

class TampilDefinsi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Definsi Puasa'),
      ),

      body: PageView(
        children: <Widget>[
          definsiItem('Secara Etimologi', 'Kata haji berasal dari bahasa arab yang bermakna tujuan dan dapat dibaca dengan dua lafazh Al-hajj dan Al-Hijj'),
          definsiItem('Secara Terminologi', 'Haji menurut istilah syar’i adalah beribadah kepada Allah dengan melaksanakan manasik yang telah ditetapkan dalam sunnah Rasulullah Shallallahu’alaihi Wasallam [2] dan ada pula ulama yang berpendapat: “Haji adalah bepergian dengan tujuan ke tempat tertentu pada waktu yang tertentu untuk melaksanakan suatu amalan yang tertentu pula[3]. Akan tetapi definisi ini kurang pas karena haji lebih khusus dari apa yang didefinisikan di sini, karena seharusnya ditambah dengan satu ikatan yaitu ibadah, maka apa yang ada pada definisi pertama lebih sempurna dan menyeluruh.')
        ],
      ),
    );
  }
}

Widget definsiItem(String judul, String detail) {
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
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0, height: 0.5),
          textAlign: TextAlign.justify,
        ),
      ),
    ],
  );
}