import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
   ColorLearn({Key? key}) : super(key: key);
  final ColorsItems colorsItems=ColorsItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorsItems.emerald,
        child: Center(child: Text("data")),
        
      ),
    );
  }
}

class ColorsItems{
  final Color livingCoral=Color(0xffFF6F61);
  final Color sulu=Color.fromARGB(198, 237, 97, 1);
  final Color emerald=Color(0xff009B77);
}