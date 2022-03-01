import 'package:flutter/material.dart';
import 'package:run_window/home2.dart';
import 'package:run_window/screen/homepage.dart';
import 'home.dart';
import 'package:run_window/screen/homepage.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Starting',
    );
  }
}
