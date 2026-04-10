import 'package:flutter/material.dart';

class RegraTres extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegraTresState();
  }
}

class _RegraTresState extends State<RegraTres> {
  String _resultado = "";

  var _numero1Controller = TextEditingController();
  var _numero2Controller = TextEditingController();
  var _numero3Controller = TextEditingController();

  void _calcular() {
    double numero1 = double.tryParse(_numero1Controller.text) ?? 0.0;
    double numero2 = double.tryParse(_numero2Controller.text) ?? 0.0;
    double numero3 = double.tryParse(_numero3Controller.text) ?? 0.0;

    setState(() {
      _resultado = "X = " + ((numero2 * numero3) / numero1).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120,
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                controller: _numero1Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Número 1",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("está para", style: TextStyle(fontSize: 20),),
            ),
            SizedBox(
              width: 120,
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                controller: _numero2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Número 2",
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("assim como", style: TextStyle(fontSize: 20),), ],
        ),
        SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120,
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                controller: _numero3Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Número 3",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("está para", style: TextStyle(fontSize: 20),),
            ),
            SizedBox(
              width: 120,
              child: Text(
                "X",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                _calcular();
              },
              child: Text("Calcular", style: TextStyle(fontSize: 25, color: Colors.red),),
            ),
          ],
        ),
        SizedBox(height: 70),
        SizedBox(child: Text(_resultado, style: TextStyle(fontSize: 30))),
      ],
    );
  }
}
