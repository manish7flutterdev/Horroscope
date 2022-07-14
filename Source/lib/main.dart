import 'package:flutter/material.dart';
import 'package:horoscope/src/fonts/fonts.dart';
import 'package:horoscope/src/ui/homepage.dart';
import 'package:horoscope/src/ui/profile.dart';
import 'package:horoscope/src/ui/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Signin(),
    );
  }
}
