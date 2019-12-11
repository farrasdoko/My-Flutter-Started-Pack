import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FirstApp",
      home: TampilanUtama(),
    );
  }
}

class TampilanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("FirstApp"),
      ),
      body: Column (
        children: <Widget>[
          Text ("Hello World!",
          style: TextStyle(fontSize: 20, color: Colors.blue[800]),),
          RaisedButton (
              onPressed: null,
              child: Text ("Click Me!"),),
          Row ()
        ]
      ),
    );

  }
}
