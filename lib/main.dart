import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paraisoperrunoapk/Pages/Principales/pageviewinicio.dart';
import 'package:paraisoperrunoapk/carrito/Carrito.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Pages/Principales/CatalogoShop.dart';
import 'Pages/Principales/Inicio.dart';
import 'Pages/Principales/Servicios.dart';
import 'Pages/Principales/Ubicacion.dart';
import 'Pages/homepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(ChangeNotifierProvider(
    create: (context) => Carrito(),
    child: MyApp(showHome: showHome),
  ));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({
    Key? key,
    required this.showHome,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'El Paraiso Perruno',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('es', ''),
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) =>
              showHome ? const Homepage() : const PageViewInicio(),
          'inicio': (context) => const Inicio(),
          "Catalogo": (context) => const Catalogo(),
          "servicios": (context) => const Servicios(),
          "ubicacion": (context) => const Ubicacion(),
        });
  }
}
