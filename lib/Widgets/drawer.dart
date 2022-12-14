import 'package:flutter/material.dart';
import 'package:paraisoperrunoapk/Pages/Principales/CatalogoShop.dart';
import 'package:paraisoperrunoapk/Pages/Principales/Servicios.dart';
import 'package:paraisoperrunoapk/Pages/Principales/Ubicacion.dart';

class barralateral extends StatelessWidget {
  const barralateral({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo.shade300,
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.only(top: 5),
            child: Image(
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
                image: AssetImage('assets/images/cartel casa.jpg')),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                width: 60,
                height: 55,
                child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/casa.png')),
              ),
            ),
            title: Stack(children: [
              Text('Catalogo',
                  style: TextStyle(
                    foreground: Paint()
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5,
                    fontSize: 40,
                    letterSpacing: 2,
                    fontFamily: 'Patua One',
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                'Catalogo',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    letterSpacing: 2,
                    fontFamily: 'Patua One',
                    fontWeight: FontWeight.bold),
              ),
            ]),
            onTap: () {
              final routes =
                  MaterialPageRoute(builder: (context) => Catalogo());
              Navigator.push(context, routes);
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                width: 60,
                height: 55,
                child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/tijerasbueno.png')),
              ),
            ),
            title: Stack(children: [
              Text('Servicios',
                  style: TextStyle(
                    foreground: Paint()
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5,
                    fontSize: 40,
                    letterSpacing: 2,
                    fontFamily: 'Patua One',
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                'Servicios',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    letterSpacing: 2,
                    fontFamily: 'Patua One',
                    fontWeight: FontWeight.bold),
              ),
            ]),
            onTap: () {
              final routes =
                  MaterialPageRoute(builder: (context) => Servicios());
              Navigator.push(context, routes);
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                width: 60,
                height: 55,
                child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/mapa.png')),
              ),
            ),
            title: Stack(children: [
              Text('Ubicaci??n',
                  style: TextStyle(
                    foreground: Paint()
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5,
                    fontSize: 40,
                    letterSpacing: 2,
                    fontFamily: 'Patua One',
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                'Ubicaci??n',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    letterSpacing: 2,
                    fontFamily: 'Patua One',
                    fontWeight: FontWeight.bold),
              ),
            ]),
            onTap: () {
              final routes =
                  MaterialPageRoute(builder: (context) => Ubicacion());
              Navigator.push(context, routes);
            },
          ),
          Expanded(
              child: Container(
            height: 270,
          )),
          Divider(
            height: 10,
            thickness: 4.5,
          ),
          Container(
            alignment: Alignment.center,
            child: Text('?? 2022 El Paraiso Perruno, All rights reserved'),
          )
        ],
      ),
    );
  }
}
