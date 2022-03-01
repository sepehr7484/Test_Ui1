import 'dart:async';

import 'package:flutter/material.dart';
import 'package:run_window/style.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int timers = 0;
  int count = 0;
  void increment() {
    count++;
    setState(() {
      debugPrint(count.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(milliseconds: 3), (timer) => timers++);
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: txtsty(45, Colors.black),
            ),
            Text(
              timers.toString(),
              style: txtsty(30, Colors.black),
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
