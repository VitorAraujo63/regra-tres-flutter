import 'package:flutter/material.dart';
import 'package:regra_tres/telacalculo.dart';

class RegraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Regra de três",
      home: TelaCalculo());
  }
}
