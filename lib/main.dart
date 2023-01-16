import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body:  DicePage(),
        backgroundColor: Colors.red,
    ),
  ));
}


class DicePage extends StatefulWidget{
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage>{
  int ldf = 6;
  int rdf = 1;
  pressed(){
   setState(() {
     ldf =Random().nextInt(6) + 1;
     rdf =Random().nextInt(6) + 1;
   });
  }
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: (){
                  pressed();

                },
                child: Image.asset('images/dice$ldf.png')),
          ),),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: (){
                     pressed();
                },
                child: Image.asset('images/dice$rdf.png')),
          ),),
        ],
      ),
    );
  }
}


