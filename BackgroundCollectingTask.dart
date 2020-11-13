import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_bluetooth_serial_example/singleton.dart';

class BackgroundCollectingTask extends Model {
  var singleton = MyPreferences();

  static BackgroundCollectingTask of(
    BuildContext context, {
    bool rebuildOnChange = false,
  }) =>
      ScopedModel.of<BackgroundCollectingTask>(
        context,
        rebuildOnChange: rebuildOnChange,
      );

  BluetoothConnection _connection;

  List<int> circularBuffer = List<int>();

  bool inProgress;

  BackgroundCollectingTask._fromConnection(this._connection) {
    _connection.input.listen((data) {
      circularBuffer += data;

      int index;
      var mataux = [];

      index = circularBuffer.indexOf('v'.codeUnitAt(0));

      mataux = circularBuffer.sublist(0, index);

      circularBuffer.removeRange(0, index + 1);
      //notifyListeners();

      var bytes = utf8.decode(mataux);
      singleton.probevalue = double.parse(bytes);


      /*/////

      var index2 = circularBuffer.indexOf('c'.codeUnitAt(0));

      var mataux2 = circularBuffer.sublist(0, index2);

      circularBuffer.removeRange(0, index2 + 1);
      //notifyListeners();

      var bytes2 = utf8.decode(mataux2);
      singleton.probevalue3 = double.parse(bytes2);*/


/*
      switch (letra) {
        case 118:
          {
            singleton.probevalue = double.parse(bytes);
          }
          break;
        case 99:
          {
            singleton.probevalue3 = double.parse(bytes);
          }
          break;
      }*/
    }).onDone(() {
      inProgress = false;
      notifyListeners();
    });
  }

  static Future<BackgroundCollectingTask> connect(
      BluetoothDevice server) async {
    final BluetoothConnection connection =
        await BluetoothConnection.toAddress(server.address);
    return BackgroundCollectingTask._fromConnection(connection);
  }

  void dispose() {
    _connection.dispose();
  }

  Future<void> start() async {
    inProgress = true;
    notifyListeners();
    _connection.output.add(ascii.encode('start'));
    await _connection.output.done;
  }

  Future<void> pause() async {
    inProgress = false;
    notifyListeners();
    _connection.output.add(ascii.encode('stop'));
    await _connection.output.allSent;
  }

  Future<void> resume() async {
    inProgress = true;
    notifyListeners();
    _connection.output.add(ascii.encode('start'));
    await _connection.output.allSent;
  }
}
