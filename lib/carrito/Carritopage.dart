import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'Carrito.dart';

class CarritoPantalla extends StatefulWidget {
  const CarritoPantalla({super.key});

  @override
  State<CarritoPantalla> createState() => _CarritoPAntallaState();
}

class _CarritoPAntallaState extends State<CarritoPantalla> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade300,
          title: Text('Pedidos'),
        ),
        body: Container(
          color: Color.fromARGB(255, 219, 217, 228),
          child: carrito.item.length == 0
              ? Center(
                  child: Text('Carrito Vacio'),
                )
              : ListView(
                  children: <Widget>[
                    for (var item in carrito.item.values)
                      Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/' + item.imagen,
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.all(7),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(item.title,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        item.precio.toStringAsFixed(0) + ' CUP',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1),
                                    child: Row(
                                      children: [
                                        Text('Cantidad:',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13)),
                                        Expanded(child: Container()),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.indigo.shade300,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          width: 30,
                                          height: 30,
                                          child: IconButton(
                                              padding: EdgeInsets.all(1),
                                              iconSize: 27,
                                              color: Colors.white,
                                              onPressed: () {
                                                setState(() {
                                                  carrito
                                                      .DecrementarCantidadItem(
                                                          item.id);
                                                });
                                              },
                                              icon: Icon(Icons.remove)),
                                        ),
                                        Container(
                                          child: Center(
                                            child: Text(
                                                item.cantidad.toString(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                )),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.indigo.shade300,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          width: 30,
                                          height: 30,
                                          child: IconButton(
                                              padding: EdgeInsets.all(1),
                                              iconSize: 27,
                                              color: Colors.white,
                                              onPressed: () {
                                                setState(() {
                                                  carrito
                                                      .incrementarCantidadItem(
                                                          item.id);
                                                });
                                              },
                                              icon: Icon(Icons.add)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                            Container(
                              width: 74,
                              height: 100,
                              child: Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                    Text('Total',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19)),
                                    Text(
                                        (item.precio * item.cantidad)
                                                .toStringAsFixed(0) +
                                            ' CUP',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
        ),
        persistentFooterButtons: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 50,
              color: Colors.indigo.shade300,
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'TOTAL:',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      offset: Offset.fromDirection(1, (3)),
                                      blurRadius: 7)
                                ]),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          carrito.montoTotal.toStringAsFixed(0) + ' CUP',
                          style: TextStyle(
                              letterSpacing: 1,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    offset: Offset.fromDirection(1, (3)),
                                    blurRadius: 7)
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () async {
                            String pedido = '';
                            carrito.item.forEach((key, value) {
                              pedido = '$pedido ' +
                                  value.title +
                                  ' Cantidad: ' +
                                  value.cantidad.toString() +
                                  ' Precio SubTotal ' +
                                  value.precio.toString() +
                                  ' Precio Total ' +
                                  (value.cantidad * value.precio)
                                      .toStringAsFixed(0) +
                                  "\n********************\n";
                            });
                            pedido = '$pedido' +
                                ' Total ' +
                                carrito.montoTotal.toStringAsFixed(0) +
                                '\n********************\n';
                            pedido = '$pedido' +
                                ' Total Con Domicilio ' +
                                (carrito.montoTotal + 50).toStringAsFixed(0) +
                                '\n********************\n';
                            //vincular wathsapp
                            String celular = '5355179245';
                            String mensaje = pedido;
                            String url =
                                'whatsapp://send?phone=$celular&text=$mensaje';
                            if (await canLaunchUrlString(url)) {
                              await launchUrlString(url);
                            } else {
                              throw ('No se Pudo Enviar El Mensaje de wathsapp');
                            }
                          },
                          icon: Icon(
                            Icons.send,
                            size: 30,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  offset: Offset.fromDirection(1, (3)),
                                  blurRadius: 7)
                            ],
                          )))
                ],
              ),
            ),
          )
        ],
      );
    });
  }
}
