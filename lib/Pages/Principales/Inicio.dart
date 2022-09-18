import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Row(
          children: [
            ListTile(
              title: Text('Hola'),
            ),
            ListTile(
              title: Text('Hola'),
            ),
            ListTile(
              title: Text('Hola'),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Row(),
      ),
    );
  }
}
