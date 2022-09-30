import 'package:flutter/material.dart';

class Entrenador extends StatelessWidget {
  const Entrenador({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontFamily: 'Patua One',
        fontSize: 18,
        foreground: Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4,
        fontWeight: FontWeight.bold);
    var textStyle2 = TextStyle(
        fontFamily: 'Patua One',
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(122, 132, 203, 1),
        centerTitle: true,
        title: Stack(
          children: [
            Container(
              child: Text(
                'ENTRENADOR',
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 2,
                    fontFamily: 'Patua One',
                    fontSize: 30,
                    foreground: Paint()
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                'ENTRENADOR',
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 2,
                    fontFamily: 'Patua One',
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: 390,
        color: Color.fromARGB(255, 151, 157, 194),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/cartel casa.jpg')),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Stack(
                children: [
                  Container(
                    width: 300,
                    child: Text(
                      'DR. Yusnel Fernandez',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Patua One',
                          fontSize: 30,
                          foreground: Paint()
                            ..color = Colors.black
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      'DR. Yusnel Fernandez',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Patua One',
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              width: 280,
              height: 150,
              child: Stack(
                children: [
                  Container(
                    width: 260,
                    child: Text(
                        ' Pequeña Descripción:         Doctor Medico Veterinario con Muchos Años de Experiencia. Servicios de Diagnostico, Tratamiento,Cirugia y Ultrasonido.',
                        textAlign: TextAlign.left,
                        style: textStyle),
                  ),
                  Container(
                    width: 260,
                    child: Text(
                        ' Pequeña Descripción:         Doctor Medico Veterinario con Muchos Años de Experiencia. Servicios de Diagnostico, Tratamiento,Cirugia y Ultrasonido.',
                        textAlign: TextAlign.left,
                        style: textStyle2),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 280,
              height: 20,
              child: Stack(
                children: [
                  Container(
                    height: 20,
                    width: 260,
                    child: Text(
                      'Horarios:',
                      textAlign: TextAlign.center,
                      style: textStyle,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 260,
                    child: Text(
                      'Horarios:',
                      textAlign: TextAlign.center,
                      style: textStyle2,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 280,
              height: 20,
              child: Stack(
                children: [
                  Container(
                    height: 20,
                    width: 260,
                    child: Text(
                      'Lunes -- Sabado',
                      textAlign: TextAlign.center,
                      style: textStyle,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 260,
                    child: Text(
                      'Lunes -- Sabado',
                      textAlign: TextAlign.center,
                      style: textStyle2,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 280,
              height: 22,
              child: Stack(
                children: [
                  Container(
                    height: 22,
                    width: 260,
                    child: Text(
                      '(8:00AM -- 5:00PM)',
                      textAlign: TextAlign.center,
                      style: textStyle,
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 260,
                    child: Text(
                      '(8:00AM -- 5:00PM)',
                      textAlign: TextAlign.center,
                      style: textStyle2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 280,
              height: 50,
              child: Stack(
                children: [
                  Container(
                    height: 50,
                    width: 260,
                    child: Text(
                      'Direccion: Rodolfo Valderas #533 entre EstradaPalma y Rio',
                      textAlign: TextAlign.center,
                      style: textStyle,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 260,
                    child: Text(
                      'Direccion: Rodolfo Valderas #533 entre EstradaPalma y Rio',
                      textAlign: TextAlign.center,
                      style: textStyle2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 13),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: 280,
                  color: Color.fromRGBO(122, 132, 203, 1),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      child: Stack(
                        children: [
                          Container(
                            child: Text(
                              'Contactarlo Aqui',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Patua One',
                                  fontSize: 25,
                                  foreground: Paint()
                                    ..color = Colors.black
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Contactarlo Aqui',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Patua One',
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
