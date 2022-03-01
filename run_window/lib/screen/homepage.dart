// ignore: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:run_window/model/widget1.dart';
import 'package:run_window/style.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  Text(
                    '10 task pending',
                    style: txtsty(15, Colors.red),
                  ),
                  search(),
                  Text(
                    'CateGories',
                    style: txtsty(30, Colors.black),
                  ),
                  catigory1(),
                  const SizedBox(height: 20),
                  txtItem(),
                  ongoing()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  header() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hi Sajjad',
          style: txtsty(30, Colors.black),
        ),
        const Spacer(
            // flex: 2,
            ),
        const CircleAvatar(
          backgroundImage: AssetImage('img/man.png'),
        ),
      ],
    );
  }

  search() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: styleSearch(),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.75,
          child: toolsearch(),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.filter_list_outlined),
          ),
        )
      ],
    );
  }

  toolsearch() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Icon(CupertinoIcons.search),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.50,
          child: TextField(
            style: txtsty(20, Colors.black),
            decoration: const InputDecoration.collapsed(
              hintText: 'Search',
            ),
          ),
        )
      ],
    );
  }

  catigory1() {
    return Row(
      children: const [
        CateGoryItem('  Mobile App', '      05 Tasks', 'img/beauty.png'),
        CateGoryItem('  Website', '      10 Tasks', 'img/man1.png'),
      ],
    );
  }

  txtItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Ongoing Task',
          style: txtsty(25, Colors.blue.shade900),
        ),
        Text(
          'see all',
          style: txtsty(15, Colors.red),
        ),
      ],
    );
  }

  ongoing() {
    return Container(
      decoration: styleCategory(Colors.white, 20),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          itemongoin1(),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Team members',
            style: txtsty(16, Colors.black45),
          ),
          const SizedBox(
            height: 10,
          ),
          itemongoin2(),
        ],
      ),
    );
  }

  itemongoin1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Wallet App Design',
          style: txtsty(20, Colors.green.shade900),
        ),
        Card(
          color: Colors.blue.shade400,
          child: Text(
            '    6d',
            style: txtsty(10, Colors.white),
          ),
        )
      ],
    );
  }

  itemongoin2() {
    return Row(
      children: [
        itemongoin2_1(),
        Spacer(),
        itemongoin2_2(),
      ],
    );
  }

  itemongoin2_1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            circleAvetor('man'),
            SizedBox(
              width: 10,
            ),
            circleAvetor('man'),
            SizedBox(
              width: 10,
            ),
            circleAvetor('man'),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 15,
              child: Icon(
                Icons.access_time_filled_rounded,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              timers1.toString(),
              style: txtsty(12, Colors.red.shade300),
            ),
          ],
        )
      ],
    );
  }

  itemongoin2_2() {
    return Container(
      width: 50,
      height: 50,
      child: CustomPaint(
        willChange: true,
        painter: MyPointer(enableangel),
        child: Center(
          child: Text('${enableangel.toInt()}%'),
        ),
      ),
    );
  }
}
