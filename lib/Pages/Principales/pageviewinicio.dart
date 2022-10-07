import 'package:flutter/material.dart';
import 'package:paraisoperrunoapk/Pages/Principales/Inicio.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageViewInicio extends StatefulWidget {
  const PageViewInicio({super.key});

  @override
  State<PageViewInicio> createState() => _PageViewInicioState();
}

class _PageViewInicioState extends State<PageViewInicio> {
  final control = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    control.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var estiloInicio = TextStyle(
        inherit: false,
        fontSize: 13,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
        fontFamily: 'Patua One');
    var estiloStroke = TextStyle(
        inherit: false,
        fontSize: 13,
        foreground: Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
        fontFamily: 'Patua One');
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (index) {
            setState(() => isLastPage = index == 5);
          },
          pageSnapping: true,
          controller: control,
          children: [
            paginashop(),
            paginabano(),
            paginaguarderia(),
            paginavet(),
            paginacontrol(),
            paginaEntrenador(),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: Colors.white,
                  backgroundColor: Colors.indigo.shade300,
                  minimumSize: const Size.fromHeight(80)),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);

                final ruta =
                    MaterialPageRoute(builder: ((context) => Inicio()));
                Navigator.push(context, ruta);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bienvenido',
                    style: TextStyle(
                        fontFamily: 'Paprika',
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 40,
                  ))
                ],
              ))
          : Container(
              color: Colors.indigo.shade300,
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        control.jumpToPage(5);
                      },
                      child: Text(
                        'Omitir',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )),
                  Center(
                    child: SmoothPageIndicator(
                      controller: control,
                      count: 6,
                      effect: WormEffect(
                          strokeWidth: 2,
                          spacing: 10,
                          dotColor: Colors.white,
                          activeDotColor: Colors.indigo),
                      onDotClicked: (index) {
                        control.animateToPage(index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        control.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: Text('Siguiente',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))),
                ],
              ),
            ),
    );
  }

  Widget paginashop() {
    return Container(
      color: Color.fromARGB(255, 255, 245, 157),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/dibujoshop.png')),
            Stack(
              children: [
                Text(
                  'Tienda De Accesorios',
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Permanent Marker',
                    foreground: Paint()
                      ..color = Colors.white54
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4,
                  ),
                ),
                Text(
                  'Tienda De Accesorios',
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.pinkAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Permanent Marker'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              child: Stack(
                children: [
                  Text(
                    'Podras Comprar Todo Tipo De Articulos y Accesorios Para Su Mascota de La Mejor Calidad y Precios.',
                    style: TextStyle(
                        letterSpacing: 2,
                        foreground: Paint()
                          ..color = Colors.white54
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Podras Comprar Todo Tipo De Articulos y Accesorios Para Su Mascota de La Mejor Calidad y Precios.',
                    style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.pinkAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget paginabano() {
    return Container(
      color: Color.fromARGB(255, 34, 197, 247),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/dibujobano.png')),
            Stack(
              children: [
                /*  Text(
                  'Estetica Canina',
                  style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Permanent Marker',
                    foreground: Paint()
                      ..color = Colors.grey
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2,
                  ),
                ),*/
                Text(
                  'Estetica Canina',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Permanent Marker'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 310,
              child: Stack(
                children: [
                  /*Text(
                    'En Nuestro Local Resivira Todo Tipos De Servicios Encaminado A La Higiene y Belleza De Mano De Profesionales',
                    style: TextStyle(
                        letterSpacing: 1,
                        foreground: Paint()
                          ..color = Color.fromARGB(185, 158, 158, 158)
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),*/
                  Text(
                    'En Nuestro Local Resivira Todo Tipos De Servicios Encaminado A La Higiene y Belleza De Mano De Profesionales',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget paginaguarderia() {
    return Container(
      color: Color.fromARGB(134, 254, 34, 184),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/images/guarderia dibujo.png')),
            Stack(
              children: [
                Text(
                  'Guarderia Canina',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Permanent Marker',
                    /*foreground: Paint()
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4,*/
                  ),
                ),
                Text(
                  'Guarderia Canina',
                  style: TextStyle(
                      letterSpacing: 0,
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Permanent Marker'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 330,
              child: Stack(
                children: [
                  Text(
                    'Podra Dejar Su Mascota y Disfrutar De Sus Merecidas Vacaciones, Con La Confianza Que Resivira las Mejores Atenciones',
                    style: TextStyle(
                        letterSpacing: 0,
                        /* foreground: Paint()
                          ..color = Colors.black
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3,*/
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Podra Dejar Su Mascota y Disfrutar De Sus Merecidas Vacaciones, Con La Confianza Que Resivira las Mejores Atenciones',
                    style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget paginavet() {
    return Container(
      color: Color.fromARGB(143, 124, 4, 203),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image(image: AssetImage('assets/images/vetdibujo.png')),
            Stack(
              children: [
                Text(
                  'Veterinario',
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Permanent Marker',
                    /* foreground: Paint()
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3,*/
                  ),
                ),
                Text(
                  'Veterinario',
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Permanent Marker'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 320,
              child: Stack(
                children: [
                  Text(
                    'Acceso a Los Mejores Especialistas Del Sector ',
                    style: TextStyle(
                        letterSpacing: 2,
                        /*foreground: Paint()
                          ..color = Colors.black
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3,*/
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Acceso a Los Mejores Especialistas Del Sector ',
                    style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget paginacontrol() {
    return Container(
      color: Colors.blue.shade400,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image(height: 350, image: AssetImage('assets/images/alimanas.png')),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Text(
                  'Control de Plagas',
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Permanent Marker',
                    /*foreground: Paint()
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4,*/
                  ),
                ),
                Text(
                  'Control de Plagas',
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Permanent Marker'),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              child: Stack(
                children: [
                  /*Text(
                    '¿Tienes Intrusos Indeseables En Casa? No se Preocupe Con Solo Un Click Podra Ordenar la Solución',
                    style: TextStyle(
                        letterSpacing: 2,
                        foreground: Paint()
                          ..color = Colors.black
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),*/
                  Text(
                    '¿Tienes Intrusos Indeseables En Casa? No se Preocupe Con Solo Un Click Podra Ordenar la Solución',
                    style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget paginaEntrenador() {
    return Container(
      color: Color.fromARGB(202, 246, 86, 86),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image(image: AssetImage('assets/images/entrenadordibujo.png')),
            Stack(
              children: [
                Text(
                  'Entrenador',
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Permanent Marker',
                    /*foreground: Paint()
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4,*/
                  ),
                ),
                Text(
                  'Entrenador',
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Permanent Marker'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 330,
              child: Stack(
                children: [
                  Text(
                    'No Hay Perros Malos, Solo Mal Entrenados',
                    style: TextStyle(
                        letterSpacing: 2,
                        /*foreground: Paint()
                          ..color = Colors.black
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3,*/
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'No Hay Perros Malos, Solo Mal Entrenados',
                    style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Permanent Marker'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
