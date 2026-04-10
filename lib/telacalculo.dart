import 'package:flutter/material.dart';
import 'package:regra_tres/regratres.dart';

class TelaCalculo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regra de três"),
        backgroundColor: Colors.red
      ),
      body: Center(
        child: RegraTres(),
      ),
    );
  }
}
