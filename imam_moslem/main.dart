import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ilmuan Islam"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/033-Earth-could-not-answer-nor-the-Seas-that-mourn-q75-829x1159.jpg/220px-033-Earth-could-not-answer-nor-the-Seas-that-mourn-q75-829x1159.jpg",
            "Umar Khayyām",
            "'Umar Khayyām (18 Mei 1048 – 4 Desember 1131, dalam bahasa Persia عمر خیام), dilahirkan di Nishapur, Iran. Nama aslinya adalah Ghiyātsuddin Abulfatah 'Umar bin Ibrahim Khayyāmi Nisyābūri (غياث الدين ابو الفتح عمر بن ابراهيم خيام نيشابوري). Khayyām berarti \"pembuat tenda\" dalam bahasa Persia."
          ),
          _createPageItemUI(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Khwarizmi_Amirkabir_University_of_Technology.png/225px-Khwarizmi_Amirkabir_University_of_Technology.png",
              "Muhammad ibn Musa al-Khwarizmi",
              "Muḥammad ibn Mūsā al-Khwārizmī (Persian: Muḥammad Khwārizmī محمد بن موسى خوارزمی‎; c. 780 – c. 850), Arabized as al-Khwarizmi with al- and formerly Latinized as Algorithmi, was a Persian scholar who produced works in mathematics, astronomy, and geography. Around 820 AD he was appointed as the astronomer and head of the library of the House of Wisdom in Baghdad."
          ),
          _createPageItemUI(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Portrait_of_Rhazes_%28al-Razi%29_%28AD_865_-_925%29_Wellcome_L0005053_%28cropped%29.jpg/220px-Portrait_of_Rhazes_%28al-Razi%29_%28AD_865_-_925%29_Wellcome_L0005053_%28cropped%29.jpg",
              "Muhammad ibn Zakariya al-Razi",
              "Abū Bakr Muhammad ibn Zakariyyā al-Rāzī (Persian: ابوبكر محمّد زکرياى رازى‎ Abūbakr Mohammad-e Zakariyyā-ye Rāzī, also known by his Latinized name Rhazes (/ˈrɑːziːz/) or Rasis; 854–925 CE), was a Persian polymath, physician, alchemist, philosopher, and important figure in the history of medicine. He also wrote on logic, astronomy and grammar."
          )
        ],
      ),
    );
  }
}

_createPageItemUI(String urlGambar, String nama, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          fit: BoxFit.fitHeight,
            height: 300.0,
            image: NetworkImage(urlGambar)
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Text(nama, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
        ),
        Divider(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(deskripsi, style: TextStyle(fontSize: 16.0)),
        )
      ],
    ),
  );
}
