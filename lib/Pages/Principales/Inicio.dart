import 'package:flutter/material.dart';

import 'package:paraisoperrunoapk/Widgets/drawer.dart';
import 'package:provider/provider.dart';

import '../../carrito/Carrito.dart';
import '../Internas/Info.dart';
import '../pruebajson/pageprueba.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
        appBar: AppBar(
          title: Column(children: [
            Text(
              'EL PARAISO PERRUNO',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'De Deily Y Laylah',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          backgroundColor: Colors.indigo.shade300,
        ),
        drawer: const barralateral(),
        body: JsonParse(),
      );
    });
  }
}
