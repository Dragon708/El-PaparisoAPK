import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Fumigador extends StatelessWidget {
  const Fumigador({super.key});

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
                'Control De Plagas',
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
                'Control De Plagas',
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
        color: Color.fromARGB(255, 0, 137, 123),
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
                      image: AssetImage('assets/images/fumigador2.jpg')),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              width: 340,
              height: 345,
              child: Stack(
                children: [
                  Container(
                    width: 360,
                    child: Text(
                        'PRESTAMOS SERVICIO DE CONTROL DE PLAGAS, en casas particulares, en su negocio o en áreas externas...Infestaciones de pulgas, garrapatas, piojos ....hormigas, cucarachas, mosquitos, ratones, babosas, caracoles y otros.....No damos el mismo tratamiento cuando se trata de abejas, avispas, murciélagos y otros para ello priorizamos la preservación de la especie y en consecuencia será el tratamiento...',
                        textAlign: TextAlign.left,
                        style: textStyle),
                  ),
                  Container(
                    width: 340,
                    child: Text(
                        'PRESTAMOS SERVICIO DE CONTROL DE PLAGAS, en casas particulares, en su negocio o en áreas externas...Infestaciones de pulgas, garrapatas, piojos ....hormigas, cucarachas, mosquitos, ratones, babosas, caracoles y otros.....No damos el mismo tratamiento cuando se trata de abejas, avispas, murciélagos y otros para ello priorizamos la preservación de la especie y en consecuencia será el tratamiento...',
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
                          'Le Escribo Desde La Aplicacion De La Estetica Canina ya que Estoy Interesado En Sus Servicios De Control De Plagas';
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
                              'Contactarnos Aqui',
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
                              'Contactarnos Aqui',
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
