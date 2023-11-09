// ignore_for_file: use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';


class Calculator_page extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<Calculator_page> {
  double angkapertama = 0;
  double angkakedua = 0;
  String operation = "";
  double result = 0.0;
  TextEditingController hasil = TextEditingController();


  void calculate() {
    switch (operation) {
      case "+":
        result = angkapertama + angkakedua;
        break;
      case "-":
        result = angkapertama - angkakedua;
        break;
      case "*":
        result = angkapertama * angkakedua;
        break;
      case "/":
        if (angkakedua != 0) {
          result = angkapertama / angkakedua;
        } else {
          result = double.infinity;
        }
        break;
    }
        setState(() {
      hasil.text = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CALCULATOR PAGE",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: Colors.red
               
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                angkapertama = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(labelText: 'Angka Pertama'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                angkakedua = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(labelText: 'Angka Kedua'),
            ),
             TextField(
            controller: hasil,
            readOnly: true,
            decoration: InputDecoration(labelText: 'Hasil'),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                   ),
                  onPressed: () {
                    operation = "+";
                    calculate();
                    
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    operation = "-";
                    calculate();
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    operation = "*";
                    calculate();
                  },
                  child: Text('*'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
            ),
                  onPressed: () {
                    operation = "/";
                    calculate();
                  },
                  child: Text('/'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
