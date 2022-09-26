import 'package:flutter/material.dart';
import 'package:paraisoperrunoapk/carrito/Carrito.dart';
import 'package:provider/provider.dart';

import 'Pages/Principales/CatalogoShop.dart';
import 'Pages/Principales/Inicio.dart';
import 'Pages/Principales/Servicios.dart';
import 'Pages/Principales/Ubicacion.dart';
import 'Pages/homepage.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => Carrito(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'El Paraiso Perruno',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => const Homepage(),
          'inicio': (context) => const Inicio(),
          "Catalogo": (context) => const Catalogo(),
          "servicios": (context) => const Servicios(),
          "ubicacion": (context) => const Ubicacion(),
        });
  }
}
