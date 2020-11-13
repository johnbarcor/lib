import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
//import 'package:flutter_bluetooth_serial_example/BackgroundCollectingTask.dart';
import 'package:flutter_bluetooth_serial_example/singleton.dart';

class ChatPage extends StatefulWidget {
  final BluetoothDevice server;

  const ChatPage({this.server});

  @override
  _ChatPage createState() => new _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  var singleton = MyPreferences();

  BluetoothConnection connection;

  final TextEditingController textEditingController =
      new TextEditingController();

  bool isConnecting = true;
  bool get isConnected => connection != null && connection.isConnected;


  bool isDisconnecting = false;

  @override
  void initState() {
    super.initState();

    BluetoothConnection.toAddress(widget.server.address).then((_connection) {
      connection = _connection;
      setState(() {
        isConnecting = false;
        isDisconnecting = false;
      });
    }).catchError((error) {});
  }

  @override
  void dispose() {
    if (isConnected) {
      isDisconnecting = true;
      connection.dispose();
      connection = null;
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  child: TextField(
                    style: const TextStyle(fontSize: 15.0),
                    controller: textEditingController,
                    enabled: isConnected,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: IconButton(
                    icon: const Icon(Icons.check),
                    onPressed: isConnected
                        ? () => _sendMessage(textEditingController
                            .text) //para escribir un dato en específico
                        : null),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _sendMessage(String text) async {
    text = text.trim();
    textEditingController.clear();
    singleton.probevalue2 = "";

    if (text.length > 0) {
      try {
        setState(() {
          singleton.probevalue2 = text;

        });

        connection.output.add(utf8.encode(singleton.probevalue2 + "\r\n"));
        await connection.output.allSent;
      } catch (e) {}
    }
  }
}
