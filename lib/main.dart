import 'package:flutter/material.dart';
import 'package:uvento_app/HomePage.dart';
import 'package:uvento_app/StartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uvento APP',
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
