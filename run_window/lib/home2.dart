import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'style.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> timers = ValueNotifier(0);
    ValueNotifier<int> count = ValueNotifier(0);

    Timer.periodic(const Duration(seconds: 1), (timer) => timers.value++);
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: count,
                builder: (BuildContext context, int value, child) {
                  return Text(
                    '$value',
                    style: txtsty(60, Colors.amber),
                  );
                }),
            ValueListenableBuilder(
                valueListenable: timers,
                builder: (BuildContext context, int value, child) {
                  return Text(
                    '$value',
                    style: txtsty(30, Colors.red),
                  );
                }),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count.value++;
          timers.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
