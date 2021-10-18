import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:statefull_widget/input.dart';
import 'package:statefull_widget/result.dart';
import 'package:statefull_widget/convert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //variabel berubah
  double inputUSer = 0;
  double kelvin = 0;
  double reamur = 0;
  final etInput = TextEditingController();

  void hitungSuhu() {
    setState(() {
      inputUSer = double.parse(etInput.text);
      kelvin = inputUSer + 273;
      reamur = (4 / 5) * inputUSer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Input(etInput: etInput),
              Result(kelvin: kelvin, reamur: reamur),
              Conv(
                convr: hitungSuhu,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
