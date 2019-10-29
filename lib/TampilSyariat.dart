import 'package:flutter/material.dart';

class TampilSyariat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dalil Pensyariatannya'),
      ),

      body: PageView(
        children: <Widget>[
          syariatItem('Dalil Ke-1', 'ولله على الناس حج البيت من استطاع إليه سبيلاً ومن كفر فإن الله غني عن العـالمين','Mengerjakan haji adalah kewajiban manusia terhadap Allah, yaitu (bagi) orang yang sanggup mengadakan perjalanan ke Baitullah; Barangsiapa mengingkari (kewajiban haji), maka sesungguhnya Allah Maha Kaya (tidak memerlukan sesuatu) dari semesta alam. (QS. Ali Imran, 97)'),
          syariatItem('Dalil Ke-2', 'وأتموا الحج والعمرة لله فإن أحصرتم فما استيسر من الهدي ولا تحلقوا رؤوسكم حتى يبلغ الهدي محلة فمن كان منكم مريضًا أو به أذًى من رأسه ففدية من صيام أو صدقة أو نسك فإذا أمنتم فمن تمتع بالعمرة إلى الحج فما استيسر من الهدي فمن لم يجد فصيام ثلاثة أيام فى الحج وسبعة إذا رجعتم تلك عشرة كاملة ذلك لمن لم يكن أهله حاضرى المسجد الحرام واتقوا الله واعلموا أن الله شديد العقاب', 'Dan sempurnakanlah ibadah haji dan umrah karena Allah. Jika kamu terkepung (terhalang oleh musuh atau karena sakit) maka (sembelihlah) kurban yang mudah didapat, dan jangan kamu mencukur kepalamu sebelum kurban sampai ke tempat penyembelihannya. Jika ada di antaramu yang sakit atau ada gangguan di kepalanya (lalu dia bercukur), maka wajiblah atasnya berfidyah, yaitu berpuasa, atau bersedekah, atau berkurban. Apabila kamu telah (merasa) aman maka bagi siapa yang ingin mengerjakan umrah sebelum haji (di dalam bulan Haji) (wajiblah dia menyembelih) kurban yang mudah didapat. Tetapi jika dia tidak menemukan (binatang kurban atau tidak mampu), maka wajib berpuasa tiga hari dalam masa haji dan tujuh hari (lagi) apabila kamu telah pulang kembali. Itulah sepuluh (hari) yang sempurna. Demikian itu (kewajiban membayar fidyah) bagi orang-orang yang keluarganya tidak berada (di sekitar) Masjidil Haram (orang-orang yang bukan penduduk kota Mekkah). Dan bertakwalah kepada Allah dan ketauhilah bahwa Allah sangat keras siksa-Nya. (QS. Al-Baqarah,196)'),
          syariatItem('Dalil Ke-3', 'خطبنا رسول الله  فقال يأأيها الناس قد فرض الله عليكم الحج فحجوا', 'Telah berkhutbah Rasulullah Shallallahu’alaihi Wasallam kepada kami dan berkata: “Wahai sekalian manusia! Sesungguhnya Allah Ta’ala telah mewajibkan atas kalian untuk berhaji, maka berhajilah kalian. (HR. Muslim)'),
          syariatItem('Dalil Ke-4', 'بني الإسلام على خمس شهادة أن لا إله إلا الله وأن محمدًا رسول الله وإقام الصلاة وإيتاء الزكاة وحج البيت وصوم رمضان', 'Islam itu didrikan atas lima perkara yaitu persaksian bahwa tidak ada sesembahan yang berhak disembah (dengan benar) kecuali Allah dan bersaksi bahwa Muhammad Shallallahu’alaihi Wasallam adalah utusan Allah, mendirikan shalat, menunaikan zakat,berhaji ke baitullah dan puasa di bulan ramadhan. (H.R. Bukhari dan Muslim)')
        ],
      ),
    );
  }
}

Widget syariatItem(String judul, String arab,String detail) {
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
          arab,
          style: TextStyle(fontSize: 10.0),
          textAlign: TextAlign.center,
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