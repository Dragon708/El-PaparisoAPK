import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: 300,
                  height: 200,
                  child: FadeInImage(
                      placeholder: AssetImage('assets/cargando.gif'),
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/entrenador.jpg')),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Stack(
                children: [
                  Container(
                    width: 300,
                    child: Text(
                      'Maestro Victor',
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
                      'Maestro Victor',
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
                top: 5,
              ),
              width: 350,
              height: 315,
              child: Stack(
                children: [
                  Container(
                    width: 350,
                    child: Text(
                        'DESCRIPCIÓN:  Con 35 años de experiencia en la crianza de perros, 20 como Adiestrador Canino; garantizamos la educación y el adiestramiento de su cachorro con la combinación de métodos didácticos y el reforzamiento positivo... buscamos la interrelación con el cliente dándole participación en las formas y métodos de adiestramiento...si es un dueño de mascota principiante  aportaremos conocimientos para el mejor desarrollo en la crianza de su cachorro y si tiene experiencia previa intercambiamos formas adecuadas de crianza...',
                        textAlign: TextAlign.left,
                        style: textStyle),
                  ),
                  Container(
                    width: 350,
                    child: Text(
                        'DESCRIPCIÓN:  Con 35 años de experiencia en la crianza de perros, 20 como Adiestrador Canino; garantizamos la educación y el adiestramiento de su cachorro con la combinación de métodos didácticos y el reforzamiento positivo... buscamos la interrelación con el cliente dándole participación en las formas y métodos de adiestramiento...si es un dueño de mascota principiante  aportaremos conocimientos para el mejor desarrollo en la crianza de su cachorro y si tiene experiencia previa intercambiamos formas adecuadas de crianza...',
                        textAlign: TextAlign.left,
                        style: textStyle2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: 280,
                  color: Color.fromRGBO(122, 132, 203, 1),
                  child: TextButton(
                    onPressed: () async {
                      //vincular wathsapp
                      String celular = '5353734868';
                      String mensaje =
                          'Le Escribo Desde La Aplicacion De La Estetica Canina ya que Estoy Interesado En Sus Servicios De Adiestramiento';
                      String url =
                          'whatsapp://send?phone=$celular&text=$mensaje';
                      if (await canLaunchUrlString(url)) {
                        await launchUrlString(url);
                      } else {
                        throw ('No se Pudo Enviar El Mensaje de wathsapp');
                      }
                    },
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
