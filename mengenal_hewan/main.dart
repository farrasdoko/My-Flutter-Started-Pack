import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Farras',
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
      home: Scaffold(
          appBar: AppBar(
            title: Text("Mengenal Hewan"),
            centerTitle: true
          ),
          body: TampilanUtama()
      )
    );
  }
}

class TampilanUtama extends StatelessWidget {

List<String> namaHewan = ["Anjing", "Ayam", "Babi"];
List<String> gambarHewan = ["images/anjing.png", "images/ayam.png", "images/babi.png"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: namaHewan.length,
        itemBuilder: (BuildContext context, int index) {
          return _getItemUI(context, index);
        }
      ),
    );
  }

  Widget _getItemUI(BuildContext context, int position) {
    return ListTile(
      title: Text(namaHewan[position]),
      leading: Image.asset(gambarHewan[position]),
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                DetailHewan(namaHewan, gambarHewan, position))
        );
      },
    );
  }
}

class DetailHewan extends StatelessWidget {

  List<String> nama, gambar;
  int position;

  DetailHewan(this.nama, this.gambar, this.position);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Hewan"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Image.asset(gambar[position]),
            Text(nama[position]),
          ],
        ),
      ),
    );
  }
}
