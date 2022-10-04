import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:convert';
import '../../Models/Productos.dart';
import '../../carrito/Carrito.dart';

class Acuario extends StatelessWidget {
  const Acuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade300,
          centerTitle: true,
          title: Container(
            child: Text(
              'ACUARIO',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Patua One', fontSize: 35, shadows: [
                Shadow(offset: Offset.fromDirection(1), blurRadius: 6)
              ]),
            ),
          ),
        ),
        body: Container(
            color: Color.fromARGB(255, 219, 217, 228), child: peces(context)),
        bottomSheet: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
              color: Colors.indigo.shade300,
              width: MediaQuery.of(context).size.width * 1.0,
              height: 60,
              child: TextButton(
                  onPressed: () async {
                    //vincular wathsapp
                    String celular = '5353838419';
                    String mensaje =
                        'Buenas. Le Escribo Desde La Aplicacion De La Estetica Canina ya que Tengo Interes En Comprar Bettas. ';
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
                          fontFamily: 'Patua One',
                          fontSize: 35,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                offset: Offset.fromDirection(1), blurRadius: 6)
                          ])))),
        ));
  }

  Widget peces(context) {
    Future<List<Producto>> getdatos() async {
      final response = await http.get(Uri.parse(
          'https://fantastic-valkyrie-6f02c3.netlify.app/db/peces.json'));
      var prods = jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
      //print(prods.length);
      return prods.map((e) => Producto.fromJson(e)).toList();
    }

    return Consumer<Carrito>(builder: (context, carrito, child) {
      return FutureBuilder<List<Producto>>(
          future: getdatos(),
          builder: (context, snapshot) {
            return (snapshot.data == null)
                ? Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                        ),
                        Center(
                          child: Text('Cargando...'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(child: CircularProgressIndicator()),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.only(bottom: 70),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      final peces = snapshot.data![i];
                      return Container(
                        height: 130,
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: CachedNetworkImage(
                                  placeholder: (context, url) => const Image(
                                      image: AssetImage('assets/cargando.gif')),
                                  fit: BoxFit.fitHeight,
                                  imageUrl: peces.imagen),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10, top: 30),
                              child: Container(
                                  width: 170,
                                  child: Column(children: [
                                    Stack(
                                      children: [
                                        Text(
                                          peces.nombre,
                                          style: TextStyle(
                                              letterSpacing: 3,
                                              fontFamily: 'Patua One',
                                              fontSize: 30,
                                              foreground: Paint()
                                                ..color = Colors.black
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth = 4,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          peces.nombre,
                                          style: TextStyle(
                                              letterSpacing: 3,
                                              fontFamily: 'Patua One',
                                              fontSize: 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      peces.titulo,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ])))
                        ]),
                      );
                    });
          });
    });
  }
}
