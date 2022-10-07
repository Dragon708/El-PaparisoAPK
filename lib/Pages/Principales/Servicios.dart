import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:paraisoperrunoapk/carrito/Carritopage.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../carrito/Carrito.dart';

class Servicios extends StatelessWidget {
  const Servicios({super.key});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.indigo.shade300,
          title: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(
              'EL PARAISO PERRUNO',
              style: TextStyle(
                  shadows: [
                    Shadow(offset: Offset.fromDirection(1, (4)), blurRadius: 6)
                  ],
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'De Deily Y Laylah',
              style: TextStyle(
                  shadows: [
                    Shadow(offset: Offset.fromDirection(1, (4)), blurRadius: 6)
                  ],
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            )
          ]),
        ),
        body: Column(
          children: [
            Flexible(
              child: Container(
                color: Color.fromARGB(255, 219, 217, 228),
                child: ListView(
                  padding: EdgeInsets.only(top: 3),
                  children: [
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(
                              top: 2,
                            ),
                            height: 160,
                            child: Row(
                              children: [
                                Image(
                                  alignment: Alignment.topCenter,
                                  width: 150,
                                  height: 150,
                                  image: AssetImage('assets/images/bano.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Column(children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'BAÑOS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'BAÑOS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'Razas Pequeñas 250 CUP Razas Medianas 300 CUP Razas Grandes 350 CUP Incluye Producto Antipulgas y Perfume',
                                            style: TextStyle(
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'Razas Pequeñas 250 CUP Razas Medianas 300 CUP Razas Grandes 350 CUP Incluye Producto Antipulgas y Perfume',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                        onPressed: wathsapp,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                              padding: EdgeInsets.all(4),
                                              color: Colors.indigo.shade300,
                                              child: Text('Solicitar..',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ))
                                  ]),
                                )
                              ],
                            )),
                        Container(
                            height: 160,
                            child: Row(
                              children: [
                                Image(
                                  alignment: Alignment.topCenter,
                                  width: 150,
                                  height: 150,
                                  image: AssetImage('assets/images/pelado.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Column(children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'PELADOS:',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'PELADOS:',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 185,
                                          child: Text(
                                            'Deslanado 100 CUP Recortes 100 CUP   Estetico 150 CUP  Complejo 200 CUP             A Valoración Del Estilista',
                                            style: TextStyle(
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 185,
                                          child: Text(
                                            'Deslanado 100 CUP Recortes 100 CUP   Estetico 150 CUP  Complejo 200 CUP             A Valoración Del Estilista',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                        onPressed: wathsapp,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                              padding: EdgeInsets.all(4),
                                              color: Colors.indigo.shade300,
                                              child: Text('Solicitar..',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ))
                                  ]),
                                )
                              ],
                            )),
                        Container(
                            height: 140,
                            child: Row(
                              children: [
                                Image(
                                  alignment: Alignment.topCenter,
                                  width: 150,
                                  height: 140,
                                  image:
                                      AssetImage('assets/images/dientes.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 20),
                                  child: Column(children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'SPRAY DENTAL',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'SPRAY DENTAL',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            '80 CUP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            '80 CUP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                        onPressed: wathsapp,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                              padding: EdgeInsets.all(4),
                                              color: Colors.indigo.shade300,
                                              child: Text('Solicitar..',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ))
                                  ]),
                                )
                              ],
                            )),
                        Container(
                            height: 130,
                            child: Row(
                              children: [
                                Image(
                                  alignment: Alignment.topCenter,
                                  width: 150,
                                  height: 130,
                                  image: AssetImage('assets/images/unas.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Column(children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'CORTE DE UÑAS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'CORTE DE UÑAS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            '50 CUP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            '50 CUP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                        onPressed: wathsapp,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                              padding: EdgeInsets.all(4),
                                              color: Colors.indigo.shade300,
                                              child: Text('Solicitar..',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ))
                                  ]),
                                )
                              ],
                            )),
                        Container(
                            height: 160,
                            child: Row(
                              children: [
                                Image(
                                  alignment: Alignment.topCenter,
                                  width: 150,
                                  height: 150,
                                  image: AssetImage('assets/images/oido.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 20),
                                  child: Column(children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'LIMPIEZA DE OIDOS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'LIMPIEZA DE OIDOS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            '100 CUP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            '100 CUP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextButton(
                                        onPressed: wathsapp,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                              padding: EdgeInsets.all(4),
                                              color: Colors.indigo.shade300,
                                              child: Text('Solicitar..',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ))
                                  ]),
                                )
                              ],
                            )),
                        Container(
                            height: 160,
                            child: Row(
                              children: [
                                Image(
                                  alignment: Alignment.topCenter,
                                  width: 150,
                                  height: 150,
                                  image:
                                      AssetImage('assets/images/perfume.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 20),
                                  child: Column(children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'PERFUMADO',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'PERFUMADO',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          child: Text(
                                            '100 CUP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            '100 CUP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(
                                        onPressed: wathsapp,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                              padding: EdgeInsets.all(4),
                                              color: Colors.indigo.shade300,
                                              child: Text('Solicitar..',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ))
                                  ]),
                                )
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo.shade300,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      );
    });
  }

  void wathsapp() async {
    String pedido = 'Deseo Reservar Un Turno Para La Estetica';
    String celular = '5355179245';
    String mensaje = pedido;
    String url = 'whatsapp://send?phone=$celular&text=$mensaje';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw ('No se Pudo Enviar El Mensaje de wathsapp');
    }
  }
}
