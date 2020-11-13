import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial_example/singleton.dart';

class BackgroundCollectedPage extends StatefulWidget {
  @override
  _BackgroundCollectedPageState createState() =>
      _BackgroundCollectedPageState();
}

class _BackgroundCollectedPageState extends State<BackgroundCollectedPage> {
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Collected data'),
          actions: <Widget>[],
        ),
        body: Center(
            child: ValueListenableBuilder<double>(
          valueListenable: probevalueNotifier,
          builder: (context, value, _) {
            return Text(
              'hola $value',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            );
          },
        )));
  }
}
