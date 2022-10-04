import 'package:flutter/material.dart';
import 'package:paraisoperrunoapk/Pages/Principales/Inicio.dart';

import 'Principales/pageviewinicio.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeDisplay = MediaQuery.of(context).size;
    var estiloInicio = TextStyle(
        inherit: false,
        fontSize: 50,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
        fontFamily: 'Patua One');
    var estiloStroke = TextStyle(
        inherit: false,
        fontSize: 50,
        foreground: Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
        fontFamily: 'Patua One');

    return Scaffold(
      body: Container(
        color: Colors.indigo.shade300,
        child: Stack(
          children: [
            Positioned(
                left: 83,
                top: 435,
                child: Container(
                  width: 219,
                  height: 321,
                  child: Image(
                      filterQuality: FilterQuality.high,
                      image: AssetImage('assets/images/Logobueno.png')),
                )),
            Positioned(
                left: 283,
                top: 72,
                child: Container(
                  width: 65,
                  height: 59,
                  child: Image(
                      filterQuality: FilterQuality.high,
                      image: AssetImage('assets/images/paticas.png')),
                )),
            Positioned(
                left: 9,
                top: 261,
                child: Container(
                  width: 65,
                  height: 59,
                  child: Image(
                      filterQuality: FilterQuality.high,
                      image: AssetImage('assets/images/paticas.png')),
                )),
            Positioned(
                left: 117,
                top: 320,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(800),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        width: 141,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(175, 182, 206, 100),
                        ),
                        child: TextButton(
                            onPressed: () {
                              final ruta = MaterialPageRoute(
                                  builder: ((context) => Inicio()));
                              Navigator.push(context, ruta);
                            },
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Text(
                                      'Bienvenidos',
                                      style: TextStyle(
                                          fontSize: 17,
                                          foreground: Paint()
                                            ..color = Colors.black
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 3),
                                    ),
                                    Text(
                                      'Bienvenidos',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                        offset: Offset.fromDirection(2),
                                        blurRadius: 7)
                                  ],
                                ),
                              ],
                            ))))),
            Positioned(
                left: 60,
                top: 151,
                child: Stack(
                  children: [
                    Container(
                      width: 251,
                      height: 127,
                      child: Text(
                        'El Paraiso Perruno',
                        style: estiloStroke,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 251,
                      height: 127,
                      child: Text(
                        'El Paraiso Perruno',
                        style: estiloInicio,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Positioned(
                left: 1,
                bottom: 1,
                child: Align(
                  alignment: FractionalOffset.topRight,
                  child: Container(
                      width: 36,
                      height: 281,
                      padding:
                          EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(175, 182, 206, 100),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(200))),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Estetica Canina',
                                  style: TextStyle(
                                      foreground: Paint()
                                        ..color = Colors.black
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 5,
                                      inherit: false,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Estetica Canina',
                                  style: TextStyle(
                                      inherit: false,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                )),
            Positioned(
                right: 1,
                bottom: 1,
                child: Align(
                  alignment: FractionalOffset.topRight,
                  child: Container(
                      width: 36,
                      height: 281,
                      padding:
                          EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(175, 182, 206, 100),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(200))),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Tienda De Accesorios',
                                  style: TextStyle(
                                      foreground: Paint()
                                        ..color = Colors.black
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 5,
                                      inherit: false,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Tienda De Accesorios',
                                  style: TextStyle(
                                      inherit: false,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
