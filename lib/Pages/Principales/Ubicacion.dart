import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class Ubicacion extends StatelessWidget {
  const Ubicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade300,
          centerTitle: true,
          title: Text(
            'UBICACIÓN',
            style: TextStyle(fontFamily: 'Patua One', fontSize: 35, shadows: [
              Shadow(offset: Offset.fromDirection(1), blurRadius: 6)
            ]),
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  Share.share(
                      'En el Paraiso Perruno Encontraras Todo Lo Que Necesitas Para Tu Mascota. Nuestra Dirección Es: Union 174B Interior Entre Julio Jover y Berenguer');
                },
                icon: Icon(Icons.share))
          ],
        ),
        body: Container(
          width: 380,
          color: Colors.blue,
          child: Column(
            children: [
              Container(
                  child: FadeInImage(
                      width: 350,
                      height: 350,
                      placeholder: AssetImage('assets/cargando.gif'),
                      image: AssetImage('assets/images/Mapa.jpg'))),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 330,
                child: Stack(
                  children: [
                    Text(
                      'Union 174B Interior Entre Julio Jover y Berenguer.Santa Clara. Villa Clara. CUBA',
                      style: TextStyle(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Patua One',
                          fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Union 174B Interior Entre Julio Jover y Berenguer.Santa Clara. Villa Clara. CUBA',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Patua One',
                          fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 85),
                width: 330,
                child: Stack(
                  children: [
                    Text(
                      '+5355179245',
                      style: TextStyle(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Patua One',
                          fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '+5355179245',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Patua One',
                          fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 85),
                width: 330,
                child: Stack(
                  children: [
                    Text(
                      '+5353921658',
                      style: TextStyle(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Patua One',
                          fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '+5353921658',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Patua One',
                          fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
