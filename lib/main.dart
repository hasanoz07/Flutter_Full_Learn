import 'package:flutter/material.dart';

import '101/app_bar.dart';
import '101/button_learn.dart';
import '101/color_learn.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(centerTitle: true,backgroundColor: Colors.red,elevation:0)
      ),
      home: ButtonLearn()
    );
  }
}


