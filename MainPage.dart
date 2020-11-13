import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_bluetooth_serial_example/ChatPage.dart';
import 'package:flutter_bluetooth_serial_example/singleton.dart';

import './DiscoveryPage.dart';
import './SelectBondedDevicePage.dart';
import './BackgroundCollectingTask.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  MyPreferences singleton = MyPreferences();

  BluetoothState _bluetoothState = BluetoothState.UNKNOWN;

  String _address = "...";
  String _name = "...";

  BackgroundCollectingTask _collectingTask;

  @override
  void initState() {
    super.initState();

    // Get current state
    FlutterBluetoothSerial.instance.state.then((state) {
      setState(() {
        _bluetoothState = state;
      });
    });

    if (!_bluetoothState.isEnabled) {
      FlutterBluetoothSerial.instance.requestEnable();
    }

    Future.doWhile(() async {
      // Wait if adapter not enabled
      if (await FlutterBluetoothSerial.instance.isEnabled) {
        return false;
      }
      await Future.delayed(Duration(milliseconds: 0xDD));
      return true;
    }).then((_) {
      // Update the address field
      FlutterBluetoothSerial.instance.address.then((address) {
        setState(() {
          _address = address;
        });
      });
    });

    FlutterBluetoothSerial.instance.name.then((name) {
      setState(() {
        _name = name;
      });
    });

    // Listen for futher state changes
    FlutterBluetoothSerial.instance
        .onStateChanged()
        .listen((BluetoothState state) {
      setState(() {
        _bluetoothState = state;
      });
    });
  }

  //******************************************************************* */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            SwitchListTile(
              title: const Text('Encender Bluetooth'),
              subtitle: Text(_bluetoothState.toString() +
                  " nombre:" +
                  _name.toString() +
                  " dirección: " +
                  _address.toString()),
              value: _bluetoothState.isEnabled,
              onChanged: (bool value) {
                // Do the request and update with the true value then
                future() async {
                  // async lambda seems to not working
                  if (value)
                    await FlutterBluetoothSerial.instance.requestEnable();
                  else
                    await FlutterBluetoothSerial.instance.requestDisable();
                }

                future().then((_) {
                  setState(() {});
                });
              },
            ),
            ListTile(
              title: (_bluetoothState.isEnabled)
                  ? (_collectingTask != null && _collectingTask.inProgress)
                      ? Text('Dispositivo conectado en segundo plano')
                      : RaisedButton(
                          child: (const Text('Buscar nuevos dispositivos')),
                          onPressed: () async {
                            final BluetoothDevice selectedDevice =
                                await Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return DiscoveryPage();
                                },
                              ),
                            );

                            if (selectedDevice != null) {
                              print('Descubierto -> seleccionado' +
                                  selectedDevice.address);
                            } else {
                              print('Descubierto -> no seleccionado');
                            }
                          })
                  : Text(""),
            ),
            ListTile(
              title: (_bluetoothState.isEnabled)
                  ? RaisedButton(
                      child: ((_collectingTask != null &&
                              _collectingTask.inProgress)
                          ? const Text('Desconectar de segundo plano')
                          : const Text(
                              'Conectar para recolectar información en segundo plano')),
                      onPressed: () async {
                        if (_collectingTask != null &&
                            _collectingTask.inProgress) {
                          // await _collectingTask.cancel();
                          setState(() {
                            _collectingTask.inProgress = true;
                            /* Update for `_collectingTask.inProgress` */
                          });
                        } else {
                          final BluetoothDevice selectedDevice =
                              await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return SelectBondedDevicePage(
                                    checkAvailability: false);
                              },
                            ),
                          );

                          if (selectedDevice != null) {
                            await _startBackgroundTask(context, selectedDevice);
                            setState(() {});
                          }
                        }
                      },
                    )
                  : Text(""),
            ),
            ListTile(
              title: RaisedButton(
                child: const Text('Chat'),
                onPressed: () async {
                  final BluetoothDevice selectedDevice =
                      await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SelectBondedDevicePage(checkAvailability: false);
                      },
                    ),
                  );
                  if (selectedDevice != null) {
                    _startChat(context, selectedDevice);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _startChat(BuildContext context, BluetoothDevice server) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Container(child: ChatPage(server: server));
        },
      ),
    );
  }

  Future<void> _startBackgroundTask(
    BuildContext context,
    BluetoothDevice server,
  ) async {
    try {
      _collectingTask = await BackgroundCollectingTask.connect(server);
      await _collectingTask.start();
    } catch (ex) {
      if (_collectingTask != null) {
        //_collectingTask.cancel();
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Ocurrió un error mientras se conectaba'),
            content: Text("${ex.toString()}"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Cerrar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> pause() async {
    _collectingTask.inProgress = false;
  }

  Future<void> resume() async {
    _collectingTask.inProgress = true;
  }
}
