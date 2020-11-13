import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../singleton.dart';

class PageSettings extends StatefulWidget {
  PageSettings({Key key}) : super(key: key);

  @override
  _PageSettingsState createState() => _PageSettingsState();
}

class _PageSettingsState extends State<PageSettings> {
  MyPreferences singleton = MyPreferences();

  final TextStyle estilotitulo = TextStyle(fontSize: 20.0, letterSpacing: 1.0);
  final TextStyle estilosubtitulo =
      TextStyle(fontSize: 15.0, letterSpacing: 0.8);

  get iconovelocimetroanalog => Image.asset(
        "assets/images/iconovelocimetroanalog.png",
        height: 40.0,
        colorBlendMode: BlendMode.difference,
      );
  get iconovelocimetrodig =>
      Image.asset("assets/images/iconotacometroanalog.png", height: 40.0);
  get iconotacometroanalog =>
      Image.asset("assets/images/iconotacometroanalog.png", height: 40.0);
  get iconotacometrodig =>
      Image.asset("assets/images/iconotacometrodig.png", height: 40.0);
  get iconovoltimetro =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconoregulador =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconogenerador =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconokilometraje =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconotrip1 =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconotrip2 =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconofarola =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconostop =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconoluces =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconodireccionales =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconoestacionarias =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconogasolina =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconoautonomia =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconotempmotor =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconotempamb =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconomarcha =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get icononeutro =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconogatolat =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconopresionaceite =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconopresionllantadel =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconopresionllantatras =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconomodomanejo =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconoabs =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconocontroltraccion =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
  get iconokeyless =>
      Image.asset("assets/images/iconovoltimetro.png", height: 40.0);
//*********** */
  get titulovelocimetroanalog =>
      Text("Velocímetro análogo", style: estilotitulo);
  get titulovelocimetrodig => Text("Velocímetro digital", style: estilotitulo);
  get titulotacometroanalog => Text("Tacómetro análogo", style: estilotitulo);
  get titulotacometrodig => Text("Tacómetro digital", style: estilotitulo);
  get titulovoltimetro => Text("Voltímetro", style: estilotitulo);
  get tituloregulador => Text("Regulador rectificador", style: estilotitulo);
  get titulogenerador => Text("Generador", style: estilotitulo);
  get titulokilometraje => Text("Kilometraje", style: estilotitulo);
  get titulotrip1 => Text("Trip 1", style: estilotitulo);
  get titulotrip2 => Text("Trip 2", style: estilotitulo);
  get titulofarola => Text("Farola", style: estilotitulo);
  get titulostop => Text("Stop", style: estilotitulo);
  get tituloluces => Text("Cambio de luces", style: estilotitulo);
  get titulodireccionales => Text("Direccionales", style: estilotitulo);
  get tituloestacionarias => Text("Estacionarias", style: estilotitulo);
  get titulogasolina => Text("Nivel de gasolina", style: estilotitulo);
  get tituloautonomia => Text("Autonomía", style: estilotitulo);
  get titulotempmotor => Text("Temperatura del motor", style: estilotitulo);
  get titulotempamb => Text("Temperatura ambiente", style: estilotitulo);
  get titulomarcha => Text("Marcha engranada", style: estilotitulo);
  get tituloneutro => Text("Neutro", style: estilotitulo);
  get titulogatolat => Text("Gato lateral", style: estilotitulo);
  get titulopresionaceite => Text("Presión de aceite", style: estilotitulo);
  get titulopresionllantadel =>
      Text("Presión llanta delantera", style: estilotitulo);
  get titulopresionllantatras =>
      Text("Presión llanta trasera", style: estilotitulo);
  get titulomodomanejo => Text("Modo de manejo", style: estilotitulo);
  get tituloabs => Text("ABS", style: estilotitulo);
  get titulocontroltraccion => Text("Control de tracción", style: estilotitulo);
  get titulokeyless =>
      Text("Keyless y sensor de proximidad", style: estilotitulo);
//*********** */
  get subtitulovelocimetroanalog =>
      Text("Al activarse, el velocímetro se muestra análogo",
          style: estilosubtitulo);
  get subtitulovelocimetrodig =>
      Text("Al activarse, el velocímetro se muestra digital",
          style: estilosubtitulo);
  get subtitulotacometroanalog =>
      Text("Al activarse, el tacómetro se muestra análogo",
          style: estilosubtitulo);
  get subtitulotacometrodig =>
      Text("Al activarse, el tacómetro se muestra digital",
          style: estilosubtitulo);
  get subtitulovoltimetro =>
      Text("Al activarse se muestra en tiempo real el voltaje de la batería",
          style: estilosubtitulo);
  get subtituloregulador => Text(
      "Al activarse se notifica al usuario si existe algún daño en el regulador rectificador",
      style: estilosubtitulo);
  get subtitulogenerador => Text(
      "Al activarse se notifica al usuario si existe algún daño en el generador",
      style: estilosubtitulo);
  get subtitulokilometraje =>
      Text("Al activarse se muestra el kilometraje de la moto",
          style: estilosubtitulo);
  get subtitulotrip1 => Text("Al activarse se muestra el kilometraje en Trip 1",
      style: estilosubtitulo);
  get subtitulotrip2 => Text("Al activarse se muestra el kilometraje en Trip 2",
      style: estilosubtitulo);
  get subtitulofarola => Text(
      "Al activarse se notifica al usuario si la luz principal se encuentra apagada",
      style: estilosubtitulo);
  get subtitulostop => Text(
      "Al activarse se notifica al usuario si el stop se encuentra apagado",
      style: estilosubtitulo);
  get subtituloluces => Text(
      "Al activarse se muestra alternancia cuando se cambia entre luces altas y bajas",
      style: estilosubtitulo);
  get subtitulodireccionales => Text(
      "Al activarse se muestra cuando se activa alguna de las direccionales",
      style: estilosubtitulo);
  get subtituloestacionarias =>
      Text("Al activarse se muestra cuando se han activado las estacionarias",
          style: estilosubtitulo);
  get subtitulogasolina => Text("Al activarse se muestra el nivel de gasolina",
      style: estilosubtitulo);
  get subtituloautonomia =>
      Text("Al activarse se muestran valores de autonomía",
          style: estilosubtitulo);
  get subtitulotempmotor =>
      Text("Al activarse se muestra la temperatura del motor",
          style: estilosubtitulo);
  get subtitulotempamb =>
      Text("Al activarse se muestra la temperatura ambiente",
          style: estilosubtitulo);
  get subtitulomarcha => Text("Al activarse se muestra la marcha engranada",
      style: estilosubtitulo);
  get subtituloneutro => Text("Al activarse se muestra el testigo de neutro",
      style: estilosubtitulo);
  get subtitulogatolat => Text(
      "Al activarse se notifica al usuario si el gato lateral se encuentra abajo",
      style: estilosubtitulo); //
  get subtitulopresionaceite =>
      Text("Al activarse se muestra el testigo de presión de aceite",
          style: estilosubtitulo);
  get subtitulopresionllantadel =>
      Text("Al activarse se muestra la presión de la llanta delantera",
          style: estilosubtitulo); //
  get subtitulopresionllantatras =>
      Text("Al activarse se muestra la presión de la llanta trasera",
          style: estilosubtitulo);
  get subtitulomodomanejo =>
      Text("Al activarse se muestra el modo de manejo activo",
          style: estilosubtitulo);
  get subtituloabs =>
      Text("Al activarse se muestra el testigo de ABS", style: estilosubtitulo);
  get subtitulocontroltraccion =>
      Text("Al activarse se muestra el testigo de control de tracción",
          style: estilosubtitulo);
  get subtitulokeyless => Text(
      "Al activarse muestra la intesidad de la señal entre el usuario y la motocicleta",
      style: estilosubtitulo);

  Timer _timer;

  void _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 0), (timer) {
      setState(() {
        if (singleton.defaultThemeOn) {
          singleton.defaultTheme = ThemeData.light();
          ValueNotifier(singleton.defaultTheme);
        } else {
          singleton.defaultTheme = ThemeData.dark();
          ValueNotifier(singleton.defaultTheme);
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: singleton.defaultTheme,
      home: Scaffold(
          /*appBar: AppBar(
              title: Text("hola soy la barra superior"),
            ),*/
          body: Center(
        child: ListView(
          children: <Widget>[
            //renglón título "Principal"************************************************
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 40, 0, 10),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Icon(
                        Icons.home,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Principal",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
            //renglón título "Principal"************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón velocímetro análogo************************************************
            FilaSwitch(
                iconoizq: iconovelocimetroanalog,
                titulo: titulovelocimetroanalog,
                subtitulo: subtitulovelocimetroanalog,
                encendedor: Switch(
                  value: singleton.velAnalog,
                  onChanged: (value) {
                    setState(() {
                      singleton.velAnalog = value;
                      if (value == false) {
                        singleton.velDig = true;
                        singleton.velAnalog = false;
                      } else {
                        singleton.velDig = false;
                        singleton.velAnalog = true;
                      }
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón velocímetro análogo*********************************************

            //renglón velocímetro digital**********************************************
            FilaSwitch(
                iconoizq: iconovelocimetrodig,
                titulo: titulovelocimetrodig,
                subtitulo: subtitulovelocimetrodig,
                encendedor: Switch(
                  value: singleton.velDig,
                  onChanged: (value) {
                    setState(() {
                      singleton.velDig = value;
                      if (value == false) {
                        singleton.velAnalog = true;
                        singleton.velDig = false;
                      } else {
                        singleton.velDig = true;
                        singleton.velAnalog = false;
                      }
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón velocímetro digital*********************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón tacómetro análogo**********************************************
            FilaSwitch(
                iconoizq: iconotacometroanalog,
                titulo: titulotacometroanalog,
                subtitulo: subtitulotacometroanalog,
                encendedor: Switch(
                  value: singleton.tacAnalog,
                  onChanged: (value) {
                    setState(() {
                      if (value == true) {
                        singleton.tacAnalog = true;
                        singleton.tacDig = false;
                      } else {
                        singleton.tacDig = true;
                        singleton.tacAnalog = false;
                      }
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón tacómetro análogo***************************************************

            //renglón tacómetro digital***************************************************
            FilaSwitch(
                iconoizq: iconotacometrodig,
                titulo: titulotacometrodig,
                subtitulo: subtitulotacometrodig,
                encendedor: Switch(
                  value: singleton.tacDig,
                  onChanged: (value) {
                    setState(() {
                      singleton.tacDig = value;
                      if (value == false) {
                        singleton.tacAnalog = true;
                        singleton.tacDig = false;
                      } else {
                        singleton.tacDig = true;
                        singleton.tacAnalog = false;
                      }
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón tacómetro digital****************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón volttímetro***********************************************************
            FilaSwitch(
                iconoizq: iconovoltimetro,
                titulo: titulovoltimetro,
                subtitulo: subtitulovoltimetro,
                encendedor: Switch(
                  value: singleton.voltSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.voltSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón voltímetro********************************************************

            //renglón regulador rectificador**********************************************
            FilaSwitch(
                iconoizq: iconoregulador,
                titulo: tituloregulador,
                subtitulo: subtituloregulador,
                encendedor: Switch(
                  value: singleton.reguladorSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.reguladorSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón regulador rectificador***************************************************

            //renglón generador***************************************************
            FilaSwitch(
                iconoizq: iconogenerador,
                titulo: titulogenerador,
                subtitulo: subtitulogenerador,
                encendedor: Switch(
                  value: singleton.generadorSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.generadorSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón generador****************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón kilometraje**********************************************
            FilaSwitch(
                iconoizq: iconokilometraje,
                titulo: titulokilometraje,
                subtitulo: subtitulokilometraje,
                encendedor: Switch(
                  value: singleton.kilometrajeSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.kilometrajeSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón kilometrajeSt***************************************************

            //renglón trip1St**********************************************
            FilaSwitch(
                iconoizq: iconotrip1,
                titulo: titulotrip1,
                subtitulo: subtitulotrip1,
                encendedor: Switch(
                  value: singleton.trip1St,
                  onChanged: (value) {
                    setState(() {
                      singleton.trip1St = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón trip1St***************************************************

            //renglón trip2St***************************************************
            FilaSwitch(
                iconoizq: iconotrip2,
                titulo: titulotrip2,
                subtitulo: subtitulotrip2,
                encendedor: Switch(
                  value: singleton.trip2St,
                  onChanged: (value) {
                    setState(() {
                      singleton.trip2St = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón trip2St****************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón check farola encendida**********************************************
            FilaSwitch(
                iconoizq: iconofarola,
                titulo: titulofarola,
                subtitulo: subtitulofarola,
                encendedor: Switch(
                  value: singleton.farolaSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.farolaSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón check farola encendida***************************************************

            //renglón check stop encendido**********************************************
            FilaSwitch(
                iconoizq: iconostop,
                titulo: titulostop,
                subtitulo: subtitulostop,
                encendedor: Switch(
                  value: singleton.stopSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.stopSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón check stop encendido***************************************************

            //renglón luces bajas y altas***************************************************
            FilaSwitch(
                iconoizq: iconoluces,
                titulo: tituloluces,
                subtitulo: subtituloluces,
                encendedor: Switch(
                  value: singleton.lucesSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.lucesSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón luces bajas y altas****************************************************

            //renglón direccionales**********************************************
            FilaSwitch(
                iconoizq: iconodireccionales,
                titulo: titulodireccionales,
                subtitulo: subtitulodireccionales,
                encendedor: Switch(
                  value: singleton.direccionalesSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.direccionalesSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón direccionales***************************************************

            //renglón estacionarias***************************************************
            FilaSwitch(
                iconoizq: iconoestacionarias,
                titulo: tituloestacionarias,
                subtitulo: subtituloestacionarias,
                encendedor: Switch(
                  value: singleton.estacionariasSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.estacionariasSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón estacionarias****************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón nivel gasolina**********************************************
            FilaSwitch(
                iconoizq: iconogasolina,
                titulo: titulogasolina,
                subtitulo: subtitulogasolina,
                encendedor: Switch(
                  value: singleton.gasolinaSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.gasolinaSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón nivel de gasolina***************************************************

            //renglón autonomía gasolina***************************************************
            FilaSwitch(
                iconoizq: iconoautonomia,
                titulo: tituloautonomia,
                subtitulo: subtituloautonomia,
                encendedor: Switch(
                  value: singleton.autonomiaSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.autonomiaSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //autonomía gasolina****************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón temperatura motor**********************************************
            FilaSwitch(
                iconoizq: iconotempmotor,
                titulo: titulotempmotor,
                subtitulo: subtitulotempmotor,
                encendedor: Switch(
                  value: singleton.tempMotorSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.tempMotorSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón temperatura del motor***************************************************

            //renglón temperatura ambiente***************************************************
            FilaSwitch(
                iconoizq: iconotempamb,
                titulo: titulotempamb,
                subtitulo: subtitulotempamb,
                encendedor: Switch(
                  value: singleton.tempAmbSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.tempAmbSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón temperatura ambiente****************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón marcha engranada**********************************************
            FilaSwitch(
                iconoizq: iconomarcha,
                titulo: titulomarcha,
                subtitulo: subtitulomarcha,
                encendedor: Switch(
                  value: singleton.marchaSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.marchaSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón marcha engranada***************************************************

            //renglón neutro**********************************************
            FilaSwitch(
                iconoizq: icononeutro,
                titulo: tituloneutro,
                subtitulo: subtituloneutro,
                encendedor: Switch(
                  value: singleton.neutroSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.neutroSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón neutro***************************************************

            //renglón gato lateral abajo***************************************************
            FilaSwitch(
                iconoizq: iconogatolat,
                titulo: titulogatolat,
                subtitulo: subtitulogatolat,
                encendedor: Switch(
                  value: singleton.gatolateralSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.gatolateralSt = value;
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón gato lateral abajo****************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón presión de aceite**********************************************
            FilaSwitch(
                iconoizq: iconopresionaceite,
                titulo: titulopresionaceite,
                subtitulo: subtitulopresionaceite,
                encendedor: Switch(
                  value: singleton.presionAceiteSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.presionAceiteSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón presión de aceite***************************************************

            //renglón presión llanta delantera**********************************************
            FilaSwitch(
                iconoizq: iconopresionllantadel,
                titulo: titulopresionllantadel,
                subtitulo: subtitulopresionllantadel,
                encendedor: Switch(
                  value: singleton.presionDelSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.presionDelSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón presión llanta delantera***************************************************

            //renglón presión llanta trasera***************************************************
            FilaSwitch(
                iconoizq: iconopresionllantatras,
                titulo: titulopresionllantatras,
                subtitulo: subtitulopresionllantatras,
                encendedor: Switch(
                  value: singleton.presionTraSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.presionTraSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón presión en la llanta trasera****************************************************
////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //renglón modo de manejo**********************************************
            FilaSwitch(
                iconoizq: iconomodomanejo,
                titulo: titulomodomanejo,
                subtitulo: subtitulomodomanejo,
                encendedor: Switch(
                  value: singleton.modoManSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.modoManSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón modo de manejo***************************************************

            //renglón ABS**********************************************
            FilaSwitch(
                iconoizq: iconoabs,
                titulo: tituloabs,
                subtitulo: subtituloabs,
                encendedor: Switch(
                  value: singleton.absSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.absSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorDelgado(),
            //renglón ABS***************************************************

            //renglón control de tracción***************************************************
            FilaSwitch(
                iconoizq: iconocontroltraccion,
                titulo: titulocontroltraccion,
                subtitulo: subtitulocontroltraccion,
                encendedor: Switch(
                  value: singleton.controlTracSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.controlTracSt = value;
                      if (value == false) {
                      } else {}
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            DivisorGrueso(),
            //renglón control de tracción****************************************************
///////////////////////////////////////////////////////////////////////////////////////////////
            //renglón keyless********************************************************
            FilaSwitch(
                iconoizq: iconokeyless,
                titulo: titulokeyless,
                subtitulo: subtitulokeyless,
                encendedor: Switch(
                  value: singleton.keylessSt,
                  onChanged: (value) {
                    setState(() {
                      singleton.keylessSt = value;
                      if (value == false) {
                        value = true;
                      } else {
                        value = false;
                      }
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
            //renglón keyless********************************************************

            //renglón prueba********************************************************
            FilaSwitch(
                iconoizq: iconokeyless,
                titulo: titulokeyless,
                subtitulo: subtitulokeyless,
                encendedor: Switch(
                  value: singleton.defaultThemeOn,
                  onChanged: (value) {
                    setState(() {
                      singleton.defaultThemeOn = value;
                      if (value == true) {
                        value = false;
                      } else {
                        value = true;
                      }
                    });
                  },
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.lightGreen,
                  inactiveTrackColor: Colors.orange,
                  inactiveThumbColor: Colors.red,
                )),
          ],
        ),
      )),
    );
  }

  @override
  void initState() {
    super.initState();
    /*singleton.init().then((value) {
      setState(() {
        singleton = value;
      });
    });*/
    _startTimer();
  }
}

//***********///****//////////*/*/*/*/*/*/*//*/*/*/ */ */**/*/*//*////*/*/*//*/*/*/ */

class FilaSwitch extends StatelessWidget {
  final Image iconoizq;
  final Text titulo;
  final Text subtitulo;
  final Switch encendedor;

  const FilaSwitch(
      {Key key, this.iconoizq, this.titulo, this.subtitulo, this.encendedor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 30, 0),
          child: iconoizq,
        ),
        Expanded(
          child: Column(children: <Widget>[
            Align(alignment: Alignment.centerLeft, child: titulo),
            Align(
              alignment: Alignment.centerLeft,
              child: subtitulo,
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 50, 5),
          child: encendedor,
        ),
      ],
    );
  }
}

//***********///****//////////*/*/*/*/*/*/*//*/*/*/ */ */**/*/*//*////*/*/*//*/*/*/ */

class DivisorGrueso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black26,
      height: 1.0,
      thickness: 2.0,
      indent: 20,
      endIndent: 0,
    );
  }
}

//***********///****//////////*/*/*/*/*/*/*//*/*/*/ */ */**/*/*//*////*/*/*//*/*/*/ */

class DivisorDelgado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black26,
      height: 0.5,
      thickness: 0.5,
      indent: 20,
      endIndent: 0,
    );
  }
}
