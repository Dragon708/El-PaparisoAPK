import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Guarderia extends StatelessWidget {
  const Guarderia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade300,
        centerTitle: true,
        title: Text(
          'GUARDERIA',
          style: TextStyle(fontSize: 35, shadows: [
            Shadow(offset: Offset.fromDirection(1), blurRadius: 6)
          ]),
        ),
      ),
      body: Container(
        color: Color.fromARGB(199, 255, 236, 179),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            height: 200,
            child: FadeInImage(
                placeholder: AssetImage('assets/cargando.gif'),
                image: AssetImage('assets/images/guarderia dibujo.png')),
          ),
          Container(
            width: 370,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      width: 350,
                      height: 230,
                      padding: EdgeInsets.all(15),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text(
                            'SERVICIOS:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              '- Perros Pequeños: 2.5 USD, MLC o CUP(Al Cambio Actual) Por Noche',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                          Text(
                              '- Perros Medianos: 3 USD, MLC o CUP(Al Cambio Actual) Por Noche',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                          Text(
                              '- Perros Grande: 4 USD, MLC o CUP(Al Cambio Actual) Por Noche',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              '* Incluye Dos Comidas Al Dia (Arroz, Vianda y Carne),',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                          Text(
                              '* + De Tres Noches, Resivira Un Baño Gratis En Nuestra Estetica,',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                        ],
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 350,
                    height: 120,
                    padding: EdgeInsets.all(15),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text('Condiciones:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold)),
                        Text(
                            'Perros Sanos En Optimas Condiciones De Salud y Con Su Vacunación Al Dia,No Admitimos Perros Con Problemas De Conducta, Agresividad.Todo Esto Es A Criterio.  Debera Solicitar El Servicio Como Minimo Con 3 Dias De Antelacion',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              width: 200,
              color: Colors.indigo.shade300,
              child: TextButton(
                  onPressed: () async {
                    //vincular wathsapp
                    String celular = '5355179245';
                    String mensaje =
                        'Le Escribo Desde La Aplicacion El Paraiso Perruno ya que Estoy Interesado En Sus Servicios De Guarderia';
                    String url = 'whatsapp://send?phone=$celular&text=$mensaje';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      throw ('No se Pudo Enviar El Mensaje de wathsapp');
                    }
                  },
                  child: Text('Contactarnos Aqui',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
            ),
          )
        ]),
      ),
    );
  }
}
