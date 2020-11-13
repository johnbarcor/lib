import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_bluetooth_serial_example/singleton.dart';

//import '../ChatPage.dart';
//import 'dart:math';

class PageProfile extends StatefulWidget {
  PageProfile({Key key}) : super(key: key);
  @override
  _PageProfileState createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  MyPreferences singleton = MyPreferences();

  Timer _timer;

  void _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 0), (timer) {
      setState(() {
        if (singleton.probevalue >= 0) {
          ValueNotifier(singleton.probevalue);
        } else {
          _timer.cancel();
        }
      });
    });
  }

  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    var probevalueNotifier = ValueNotifier(singleton.probevalue);
    var probevalueNotifier3 = ValueNotifier(singleton.probevalue3);

    return Scaffold(
        body: ListView(children: [
      ValueListenableBuilder<double>(
        valueListenable: probevalueNotifier,
        builder: (context, value, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'k $value',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
      ),
      ValueListenableBuilder<double>(
        valueListenable: probevalueNotifier3,
        builder: (context, value3, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'v $value3',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
      ),
      Text(singleton.probevalue2,
          textAlign: TextAlign.right, style: TextStyle(fontSize: 30.0))
    ]));
  }

  /*Widget exampleWidget() {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "BT value: ${singleton.probevalue}",
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 30.0),
        ),
      ],
    );
  }*/
}
