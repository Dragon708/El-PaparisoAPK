import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paraisoperrunoapk/Pages/Principales/CatalogoShop.dart';
import 'package:paraisoperrunoapk/Pages/Principales/Servicios.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          _fondoapp(),
          _titulo(),
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 65.0,
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(62, 66, 107, 0.7),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: TextButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HORARIOS:;',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'LUNES A SABADOS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '(8:00 AM --- 5:00 PM)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Table(
                  children: [
                    TableRow(children: [
                      _crearbotonesredondeados(
                          context,
                          Color.fromARGB(255, 255, 59, 196),
                          Icons.shopify,
                          'TIENDA',
                          Catalogo()),
                      _crearbotonesredondeados(context, Colors.blueAccent,
                          Icons.bathtub, 'ESTETICA', Servicios())
                    ]),
                    TableRow(children: [
                      _crearbotonesredondeados(context, Colors.green,
                          Icons.contact_phone, 'GUARDERIA', Catalogo()),
                      _crearbotonesredondeados(context, Colors.tealAccent,
                          Icons.shopping_basket, 'ACUARIO', Catalogo())
                    ]),
                    TableRow(children: [
                      _crearbotonesredondeados(context, Colors.redAccent,
                          Icons.medical_services, 'VETERINARIO', Catalogo()),
                      _crearbotonesredondeados(context, Colors.orange,
                          Icons.shopping_basket, 'ENTRENADOR', Catalogo())
                    ]),
                    TableRow(children: [
                      _crearbotonesredondeados(
                          context,
                          Color.fromARGB(255, 255, 59, 196),
                          Icons.shopify,
                          'UBICACIÓN',
                          Catalogo()),
                      _crearbotonesredondeados(context, Colors.blueAccent,
                          Icons.bathtub, 'INFORMACION UTIL', Servicios())
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Fondo aplicacion
Widget _fondoapp() {
  final gradiente = Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.4),
            end: FractionalOffset(0.0, 1.0),
            colors: [
          Colors.indigo.shade300,
          Color.fromRGBO(102, 173, 232, 1.0)
        ])),
  );
//configuracion caja rosa
  final cajarosa = Transform.rotate(
    angle: -pi / 50.0,
    child: Container(
      child: Image(image: AssetImage('assets/images/tijeras.png')),
      width: 240.0,
      height: 260.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(80.0),
        /*gradient: const LinearGradient(colors: [
            const Color.fromRGBO(236, 98, 188, 1.0),
            const Color.fromRGBO(241, 142, 172, 1.0)
          ])*/
      ),
    ),
  );

  return Stack(
    children: [gradiente, Positioned(top: 20, left: 60, child: cajarosa)],
  );
}

Widget _titulo() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.only(
        left: 80,
        right: 20,
        top: 10,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 7,
        ),
        Text(
          'TIENDA DE ACCESORIOS',
          style: TextStyle(
              color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold),
        ),
        Text(
          'ESTETICA Y GUARDERIA CANINA ',
          style: TextStyle(
              color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold),
        )
      ]),
    ),
  );
}

/*
Widget barrainferior(BuildContext context) {
  return Theme(
    data: Theme.of(context).copyWith(),
    child: Container(
      child: BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: IconButton(
                    icon: Icon(Icons.home),
                    iconSize: 24.0,
                    onPressed: () {
                      final routes =
                          MaterialPageRoute(builder: (context) => Info());
                      Navigator.push(context, routes);
                    })),
            BottomNavigationBarItem(
                label: 'Catalogo',
                icon: IconButton(
                    icon: Icon(Icons.shopify),
                    iconSize: 24.0,
                    onPressed: () {
                      final routes =
                          MaterialPageRoute(builder: (context) => Catalogo());
                      Navigator.push(context, routes);
                    })),
            BottomNavigationBarItem(
                label: 'Servicios',
                icon: IconButton(
                    icon: Icon(Icons.bathtub),
                    iconSize: 24.0,
                    onPressed: () {
                      final routes =
                          MaterialPageRoute(builder: (context) => Servicios());
                      Navigator.push(context, routes);
                    }))
          ]),
    ),
  );
}
*/

Widget _crearbotonesredondeados(BuildContext context, Color color,
    IconData icono, String texto, Widget pagina) {
  return Container(
    height: 110.0,
    margin: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.9),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextButton(
      onPressed: () {
        final routes = MaterialPageRoute(builder: (context) => pagina);
        Navigator.push(context, routes);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 32.0,
            child: Icon(
              icono,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            texto,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          )
        ],
      ),
    ),
  );
}
