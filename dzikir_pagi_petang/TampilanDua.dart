import 'package:flutter/material.dart';

class TampilanDua extends StatelessWidget {
  var appBarTitle;

  TampilanDua(String appBarTitl) {
    this.appBarTitle = appBarTitl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
          )
        ],
      ),
    );
  }

}