import 'package:flutter/material.dart';
import 'dart:math';


 void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dicee'),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftdicenumber = 1;
  int rightdicenumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Image.asset('images/dice$leftdicenumber.png'),
                  onPressed: () {
                    setState(() {
                      leftdicenumber = Random().nextInt(6) + 1;
                    });
                  },
                ),

              )),
          Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Image.asset('images/dice$rightdicenumber.png'),
                  onPressed: () {
                    setState(() {
                      rightdicenumber = Random().nextInt(6) + 1;
                    });
                  },
                ),

              )),


        ],
      ),
    );
  }
}
