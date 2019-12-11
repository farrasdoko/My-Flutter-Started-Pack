import 'package:flutter/material.dart';
import 'package:imam_muslim/TampilanDua.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.white,
            canvasColor: Colors.white,
            appBarTheme: AppBarTheme(elevation: 0, color: Colors.white)),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {

  var teksWaktuDoa = TextStyle(
      fontFamily: 'arial',
      color: Colors.white,
      fontSize: 35.0,
      fontWeight: FontWeight.bold
  );
  static var imgPagi = "https://media.istockphoto.com/photos/sunrise-picture-id531253600?k=6&m=531253600&s=612x612&w=0&h=5TlTeuDKczLxsZno-y28J1r9OTHH0KqoEn4XG0LyZDw=";
  static var imgPetang = "http://media.bom.gov.au/social/upload/images/red-sky-at-night-istock-resize.jpg";

  var button = ["Dzikir Pagi", "Dzikir Petang"];
  var button1 = ["Pagi", "Petang"];
  var button2 = [imgPagi, imgPetang];


  var childr = <Widget>[];


  @override
  Widget build(BuildContext context) {
    childr.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text("Dzikir", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0)),
    ),);
    childr.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text("Pagi Petang", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30.0)),
    ),);
    childr.add(SizedBox(height: 10.0),);

    for (var i = 0; i < button.length; i++) {
      childr.add(buttonPagiPetang(context, TampilanDua(button[i]), button2[i], button1[i], teksWaktuDoa),);
    }

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline), color: Colors.black, onPressed: () {})
        ],
      ),
      body: Container(

        child: ListView(
          children: childr,
        ),
      ),
    );
  }

  buttonPagiPetang(BuildContext context, Widget screen, String imageUrl, String identifier, TextStyle teksWaktu) {
    return InkWell(
      onTap: (){
        openNewScreen(context, screen);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        height: 250.0,
        child: Stack(
          children: <Widget>[
            backgroundImage(imageUrl),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(identifier, style: teksWaktu),
              ),
            )
          ],
        ),
      ),
    );
  }

  backgroundImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.luminosity),
              image: NetworkImage(imageUrl)
        )
      )
    );
  }

}

void openNewScreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}
