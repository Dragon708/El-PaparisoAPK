import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import '../../Models/Productos.dart';
import '../../carrito/Carrito.dart';
import '../../carrito/Carritopage.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Catalogo extends StatefulWidget {
  const Catalogo({super.key});

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final control1 = TextEditingController();
    List<Producto> articulos = [];
    int pageIndex = 0;
    PageController controller = PageController(initialPage: 0);
    final pageview = [
      collares(context),
      pecheras(context),
      juguetes(context),
      ropa(context),
      comestibles(context),
      higiene(context),
    ];
    final tamano = MediaQuery.of(context).size;

    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'EL PARAISO PERRUNO',
                style: TextStyle(
                    shadows: [
                      Shadow(
                          offset: Offset.fromDirection(1, (4)), blurRadius: 6)
                    ],
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'De Deily Y Laylah',
                style: TextStyle(
                    shadows: [
                      Shadow(
                          offset: Offset.fromDirection(1, (4)), blurRadius: 6)
                    ],
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              )
            ]),
          ),
          body: Container(
              height: 1400,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 219, 217, 228),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      'Categorias',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        TextButton(
                          onPressed: () {
                            controller.jumpToPage(0);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/Collar12.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'Collares',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            controller.jumpToPage(1);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/pecheramediana copia.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'Pecheras',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            controller.jumpToPage(2);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/hueso.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'Juguetes',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            controller.jumpToPage(3);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/azul.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'Ropa',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            controller.jumpToPage(4);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/carnaza2.jpg',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'Comestibles',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            controller.jumpToPage(5);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/1661782757941.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'Higiene',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Flexible(
                      flex: 5,
                      child: PageView(
                        controller: controller,
                        children: pageview,
                      )),
                ],
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            width: 130,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30)),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext) => CarritoPantalla()));
              },
              child: Badge(
                  elevation: 4,
                  position: BadgePosition.topEnd(top: -15, end: -8),
                  badgeContent: Text(carrito.numeroItem.toString(),
                      style: TextStyle(fontSize: 17)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'CARRITO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          shadows: [
                            Shadow(
                                offset: Offset.fromDirection(1, (4)),
                                blurRadius: 6)
                          ],
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        shadows: [
                          Shadow(
                              offset: Offset.fromDirection(1, (4)),
                              blurRadius: 6)
                        ],
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  )),
            ),
          ));
    });
  }

  Widget collares(BuildContext context) {
    Future<List<Producto>> getdatos() async {
      final response = await http.get(Uri.parse(
          'https://fantastic-valkyrie-6f02c3.netlify.app/db/collares.json'));
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
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      final collar = snapshot.data![i];
                      return Container(
                        margin: EdgeInsets.all(5),
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  offset: Offset.fromDirection(1, (5)),
                                  blurRadius: 7)
                            ]),
                        child: TextButton(
                          onPressed: () {
                            descripcionescollares(context, collar, carrito);
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 80,
                                height: 80,
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => const Image(
                                        image:
                                            AssetImage('assets/cargando.gif')),
                                    fit: BoxFit.fitHeight,
                                    imageUrl: collar.imagen),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Container(
                                  width: 170,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Text(
                                            collar.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 25,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            collar.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        collar.titulo,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: RatingBar(
                                            glowColor: Colors.blue,
                                            unratedColor: Colors.blue,
                                            initialRating: collar.ratings,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            ratingWidget: RatingWidget(
                                                full: Icon(
                                                  Icons.star,
                                                  color: Colors.blue,
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: Colors.blue,
                                                ),
                                                empty: Icon(
                                                  Icons.star_border,
                                                  color: Colors.black,
                                                )),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Stack(
                                          children: [
                                            Text(
                                              collar.precio.toString() +
                                                  ' USD, MLC o CUP               (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                //color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..color = Colors.black
                                                  ..strokeWidth = 2,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              collar.precio.toString() +
                                                  ' USD, MLC o CUP               (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                color: Color.fromARGB(
                                                    255, 72, 238, 81),
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Column(
                                  children: [
                                    SizedBox(height: 30),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 35,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset.fromDirection(1),
                                                blurRadius: 3)
                                          ],
                                          color: Colors.blueAccent),
                                      child: TextButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  duration: Duration(
                                                      milliseconds: 1000),
                                                  content: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            'Añadido Al Carrito',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          child: Container(
                                                            color: Colors.indigo
                                                                .shade300,
                                                            child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .push(MaterialPageRoute(
                                                                          builder: ((context) =>
                                                                              CarritoPantalla())));
                                                                },
                                                                child: Text(
                                                                    'Ir Al Carrito',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white))),
                                                          ),
                                                        )
                                                      ])));

                                          setState(() {
                                            carrito.agregarCarrito(
                                                collar.id.toString(),
                                                collar.nombre,
                                                collar.titulo,
                                                collar.imagen,
                                                collar.precio,
                                                1);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_shopping_cart_outlined,
                                          size: 26,
                                          color: Color.fromARGB(
                                              255, 246, 246, 246),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset.fromDirection(1),
                                                blurRadius: 3)
                                          ],
                                          color: Colors.blueAccent),
                                      child: TextButton(
                                          onPressed: () {
                                            descripcionescollares(
                                                context, collar, carrito);
                                          },
                                          child: Text('INFO',
                                              style: TextStyle(
                                                  color: Colors.white))),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
          });
    });
  }

  PersistentBottomSheetController<dynamic> descripcionescollares(
      BuildContext context, Producto collar, Carrito carrito) {
    return showBottomSheet(
        context: context,
        builder: (context) {
          return BottomSheet(
            enableDrag: false,
            onClosing: () {},
            builder: (context) => Scaffold(
              appBar: AppBar(
                toolbarHeight: 80,
                backgroundColor: Color.fromRGBO(121, 134, 203, 1),
                leading: Container(
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                ),
                title: Container(
                    padding: EdgeInsets.only(top: 30, left: 80),
                    child: Text(
                      collar.nombre,
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                offset: Offset.fromDirection(1, (4)),
                                blurRadius: 6)
                          ],
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              body: Container(
                padding: EdgeInsets.only(left: 4, right: 4),
                color: Color.fromRGBO(13, 23, 246, 0.157),
                child: Column(
                  children: [
                    ClipPath(
                      clipper: OvalBottomBorderClipper(),
                      child: Container(
                        width: 355,
                        height: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: CachedNetworkImage(
                            placeholder: (context, url) => const Image(
                                image: AssetImage('assets/cargando.gif')),
                            fit: BoxFit.fitHeight,
                            imageUrl: collar.imagen),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 300,
                          child: Text(
                            collar.titulo,
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
                          width: 300,
                          child: Text(
                            collar.titulo,
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
                    Container(
                      padding: EdgeInsets.only(left: 5, top: 10),
                      alignment: Alignment.centerLeft,
                      child: RatingBar(
                          glowColor: Colors.blue,
                          unratedColor: Colors.blue,
                          initialRating: collar.ratings,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 40,
                          ratingWidget: RatingWidget(
                              full: Icon(
                                Icons.star,
                                color: Colors.blue,
                              ),
                              half: Icon(
                                Icons.star_half,
                                color: Colors.blue,
                              ),
                              empty: Icon(
                                Icons.star_border,
                                color: Colors.black,
                              )),
                          onRatingUpdate: (rating) {
                            print(rating);
                          }),
                    ),
                    Container(
                      height: 165,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: Text(
                                  'Descripción:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 20,
                                      foreground: Paint()
                                        ..color = Colors.black
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Descripción:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                child: Text(
                                  collar.descripcion,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 18,
                                      foreground: Paint()
                                        ..color = Colors.black
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 3,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  collar.descripcion,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 72,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 150,
                                child: Text(
                                  'PRECIO:  ' +
                                      collar.precio.toString() +
                                      ' USD , MLC o Cup(Al Cambio Actual) ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 20,
                                      foreground: Paint()
                                        ..color = Colors.black
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                  'PRECIO:  ' +
                                      collar.precio.toString() +
                                      ' USD , MLC o Cup(Al Cambio Actual) ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 72, 238, 81),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            width: 173,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(13, 23, 246, 0.16)),
                            child: TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        duration: Duration(milliseconds: 1000),
                                        content: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Añadido Al Carrito',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: Container(
                                                  color: Colors.indigo.shade300,
                                                  child: TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    ((context) =>
                                                                        CarritoPantalla())));
                                                      },
                                                      child: Text(
                                                          'Ir Al Carrito',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white))),
                                                ),
                                              )
                                            ])));
                                setState(() {
                                  carrito.agregarCarrito(
                                      collar.id.toString(),
                                      collar.nombre,
                                      collar.titulo,
                                      collar.imagen,
                                      collar.precio,
                                      1);
                                });
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    child: Text(
                                      'Añadir Al Carrito',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Patua One',
                                          fontSize: 20,
                                          foreground: Paint()
                                            ..color = Colors.black
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Añadir Al Carrito',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Patua One',
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget pecheras(BuildContext context) {
    Future<List<Producto>> getdatos() async {
      final response = await http.get(Uri.parse(
          'https://fantastic-valkyrie-6f02c3.netlify.app/db/pecheras.json'));
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
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      final pechera = snapshot.data![i];
                      return Container(
                        margin: EdgeInsets.all(5),
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  offset: Offset.fromDirection(1, (5)),
                                  blurRadius: 7)
                            ]),
                        child: TextButton(
                          onPressed: () {
                            descripcionespecheras(context, pechera, carrito);
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 80,
                                height: 80,
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => const Image(
                                        image:
                                            AssetImage('assets/cargando.gif')),
                                    fit: BoxFit.fitHeight,
                                    imageUrl: pechera.imagen),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Container(
                                  width: 170,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Text(
                                            pechera.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 25,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            pechera.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        pechera.titulo,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: RatingBar(
                                            glowColor: Colors.blue,
                                            unratedColor: Colors.blue,
                                            initialRating: pechera.ratings,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            ratingWidget: RatingWidget(
                                                full: Icon(
                                                  Icons.star,
                                                  color: Colors.blue,
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: Colors.blue,
                                                ),
                                                empty: Icon(
                                                  Icons.star_border,
                                                  color: Colors.black,
                                                )),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Stack(
                                          children: [
                                            Text(
                                              pechera.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                //color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..color = Colors.black
                                                  ..strokeWidth = 2,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              pechera.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                color: Color.fromARGB(
                                                    255, 72, 238, 81),
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.indigo.shade300),
                                child: TextButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            duration:
                                                Duration(milliseconds: 1000),
                                            content: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('Añadido Al Carrito',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: Container(
                                                      color: Colors
                                                          .indigo.shade300,
                                                      child: TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(MaterialPageRoute(
                                                                    builder:
                                                                        ((context) =>
                                                                            CarritoPantalla())));
                                                          },
                                                          child: Text(
                                                              'Ir Al Carrito',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white))),
                                                    ),
                                                  )
                                                ])));

                                    setState(() {
                                      carrito.agregarCarrito(
                                          pechera.id.toString(),
                                          pechera.nombre,
                                          pechera.titulo,
                                          pechera.imagen,
                                          pechera.precio,
                                          1);
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 246, 246, 246),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
          });
    });
  }

  PersistentBottomSheetController<dynamic> descripcionespecheras(
      BuildContext context, Producto pechera, Carrito carrito) {
    return showBottomSheet(
        context: context,
        builder: (context) {
          return BottomSheet(
            enableDrag: false,
            onClosing: () {},
            builder: (context) => Scaffold(
              appBar: AppBar(
                toolbarHeight: 80,
                backgroundColor: Color.fromRGBO(121, 134, 203, 1),
                leading: Container(
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                ),
                title: Container(
                    padding: EdgeInsets.only(top: 30, left: 80),
                    child: Text(
                      pechera.nombre,
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                offset: Offset.fromDirection(1, (4)),
                                blurRadius: 6)
                          ],
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              body: Container(
                padding: EdgeInsets.only(left: 4, right: 4),
                color: Color.fromRGBO(13, 23, 246, 0.16),
                child: Column(
                  children: [
                    ClipPath(
                      clipper: OvalBottomBorderClipper(),
                      child: Container(
                        width: 355,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: CachedNetworkImage(
                            placeholder: (context, url) => const Image(
                                image: AssetImage('assets/cargando.gif')),
                            fit: BoxFit.fitHeight,
                            imageUrl: pechera.imagen),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 300,
                          child: Text(
                            pechera.titulo,
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
                          width: 300,
                          child: Text(
                            pechera.titulo,
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
                    Container(
                      padding: EdgeInsets.only(left: 5, top: 10),
                      alignment: Alignment.centerLeft,
                      child: RatingBar(
                          glowColor: Colors.blue,
                          unratedColor: Colors.blue,
                          initialRating: pechera.ratings,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 40,
                          ratingWidget: RatingWidget(
                              full: Icon(
                                Icons.star,
                                color: Colors.blue,
                              ),
                              half: Icon(
                                Icons.star_half,
                                color: Colors.blue,
                              ),
                              empty: Icon(
                                Icons.star_border,
                                color: Colors.black,
                              )),
                          onRatingUpdate: (rating) {
                            print(rating);
                          }),
                    ),
                    Container(
                      height: 165,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: Text(
                                  'Descripción:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 20,
                                      foreground: Paint()
                                        ..color = Colors.black
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Descripción:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                child: Text(
                                  pechera.descripcion,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 18,
                                      foreground: Paint()
                                        ..color = Colors.black
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 3,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  pechera.descripcion,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 72,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 150,
                                child: Text(
                                  'PRECIO:  ' +
                                      pechera.precio.toString() +
                                      ' USD , MLC o Cup(Al Cambio Actual) ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 20,
                                      foreground: Paint()
                                        ..color = Colors.black
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                  'PRECIO:  ' +
                                      pechera.precio.toString() +
                                      ' USD , MLC o Cup(Al Cambio Actual) ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Patua One',
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 72, 238, 81),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            width: 173,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(13, 23, 246, 0.16)),
                            child: TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        duration: Duration(milliseconds: 1000),
                                        content: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Añadido Al Carrito',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: Container(
                                                  color: Colors.indigo.shade300,
                                                  child: TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    ((context) =>
                                                                        CarritoPantalla())));
                                                      },
                                                      child: Text(
                                                          'Ir Al Carrito',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white))),
                                                ),
                                              )
                                            ])));

                                setState(() {
                                  carrito.agregarCarrito(
                                      pechera.id.toString(),
                                      pechera.nombre,
                                      pechera.titulo,
                                      pechera.imagen,
                                      pechera.precio,
                                      1);
                                });
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    child: Text(
                                      'Añadir Al Carrito',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Patua One',
                                          fontSize: 20,
                                          foreground: Paint()
                                            ..color = Colors.black
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 4,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Añadir Al Carrito',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Patua One',
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget juguetes(BuildContext context) {
    Future<List<Producto>> getdatos() async {
      final response = await http.get(Uri.parse(
          'https://fantastic-valkyrie-6f02c3.netlify.app/db/juguetes.json'));
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
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      final juguete = snapshot.data![i];
                      return Container(
                        margin: EdgeInsets.all(5),
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  offset: Offset.fromDirection(1, (5)),
                                  blurRadius: 7)
                            ]),
                        child: TextButton(
                          onPressed: () {
                            showBottomSheet(
                                context: context,
                                builder: (context) {
                                  return BottomSheet(
                                    enableDrag: false,
                                    onClosing: () {},
                                    builder: (context) => Scaffold(
                                      appBar: AppBar(
                                        toolbarHeight: 80,
                                        backgroundColor:
                                            Color.fromRGBO(121, 134, 203, 1),
                                        leading: Container(
                                          alignment: Alignment.bottomCenter,
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(Icons.arrow_back)),
                                        ),
                                        title: Container(
                                            padding: EdgeInsets.only(
                                                top: 30, left: 80),
                                            child: Text(
                                              juguete.nombre,
                                              style: TextStyle(
                                                  shadows: [
                                                    Shadow(
                                                        offset: Offset
                                                            .fromDirection(
                                                                1, (4)),
                                                        blurRadius: 6)
                                                  ],
                                                  color: Colors.white,
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                      body: Container(
                                        padding:
                                            EdgeInsets.only(left: 4, right: 4),
                                        color:
                                            Color.fromRGBO(13, 23, 246, 0.16),
                                        child: Column(
                                          children: [
                                            ClipPath(
                                              clipper:
                                                  OvalBottomBorderClipper(),
                                              child: Container(
                                                width: 355,
                                                height: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: CachedNetworkImage(
                                                    placeholder: (context,
                                                            url) =>
                                                        const Image(
                                                            image: AssetImage(
                                                                'assets/cargando.gif')),
                                                    fit: BoxFit.fitHeight,
                                                    imageUrl: juguete.imagen),
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    juguete.titulo,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Patua One',
                                                        fontSize: 25,
                                                        foreground: Paint()
                                                          ..color = Colors.black
                                                          ..style =
                                                              PaintingStyle
                                                                  .stroke
                                                          ..strokeWidth = 4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    juguete.titulo,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Patua One',
                                                        fontSize: 25,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 10),
                                              alignment: Alignment.centerLeft,
                                              child: RatingBar(
                                                  glowColor: Colors.blue,
                                                  unratedColor: Colors.blue,
                                                  initialRating:
                                                      juguete.ratings,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 40,
                                                  ratingWidget: RatingWidget(
                                                      full: Icon(
                                                        Icons.star,
                                                        color: Colors.blue,
                                                      ),
                                                      half: Icon(
                                                        Icons.star_half,
                                                        color: Colors.blue,
                                                      ),
                                                      empty: Icon(
                                                        Icons.star_border,
                                                        color: Colors.black,
                                                      )),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  }),
                                            ),
                                            Container(
                                              height: 165,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 10),
                                              child: Column(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Descripción:',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          'Descripción:',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          juguete.descripcion,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 18,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        3,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          juguete.descripcion,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 72,
                                              child: Row(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          'PRECIO:  ' +
                                                              juguete.precio
                                                                  .toStringAsFixed(
                                                                      0) +
                                                              ' USD , MLC o Cup(Al Cambio Actual) ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          'PRECIO:  ' +
                                                              juguete.precio
                                                                  .toStringAsFixed(
                                                                      0) +
                                                              ' USD , MLC o Cup(Al Cambio Actual) ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      72,
                                                                      238,
                                                                      81),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(child: Container()),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 3),
                                                    width: 173,
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        color: Color.fromRGBO(
                                                            13, 23, 246, 0.16)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                              SnackBar(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          1000),
                                                                  content: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                            'Añadido Al Carrito',
                                                                            style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.bold)),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(30),
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.indigo.shade300,
                                                                            child: TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => CarritoPantalla())));
                                                                                },
                                                                                child: Text('Ir Al Carrito', style: TextStyle(color: Colors.white))),
                                                                          ),
                                                                        )
                                                                      ])));

                                                          carrito.agregarCarrito(
                                                              juguete.id
                                                                  .toString(),
                                                              juguete.nombre,
                                                              juguete.titulo,
                                                              juguete.imagen,
                                                              juguete.precio,
                                                              1);
                                                        });
                                                      },
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              'Añadir Al Carrito',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Patua One',
                                                                  fontSize: 20,
                                                                  foreground:
                                                                      Paint()
                                                                        ..color =
                                                                            Colors.black
                                                                        ..style =
                                                                            PaintingStyle.stroke
                                                                        ..strokeWidth =
                                                                            4,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              'Añadir Al Carrito',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Patua One',
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 80,
                                height: 80,
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => const Image(
                                        image:
                                            AssetImage('assets/cargando.gif')),
                                    fit: BoxFit.fitHeight,
                                    imageUrl: juguete.imagen),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Container(
                                  width: 170,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Text(
                                            juguete.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 25,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            juguete.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        juguete.titulo,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: RatingBar(
                                            glowColor: Colors.blue,
                                            unratedColor: Colors.blue,
                                            initialRating: juguete.ratings,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            ratingWidget: RatingWidget(
                                                full: Icon(
                                                  Icons.star,
                                                  color: Colors.blue,
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: Colors.blue,
                                                ),
                                                empty: Icon(
                                                  Icons.star_border,
                                                  color: Colors.black,
                                                )),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Stack(
                                          children: [
                                            Text(
                                              juguete.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                //color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..color = Colors.black
                                                  ..strokeWidth = 2,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              juguete.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                color: Color.fromARGB(
                                                    255, 72, 238, 81),
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.indigo.shade300),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              duration:
                                                  Duration(milliseconds: 1000),
                                              content: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Añadido Al Carrito',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      child: Container(
                                                        color: Colors
                                                            .indigo.shade300,
                                                        child: TextButton(
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(MaterialPageRoute(
                                                                      builder:
                                                                          ((context) =>
                                                                              CarritoPantalla())));
                                                            },
                                                            child: Text(
                                                                'Ir Al Carrito',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white))),
                                                      ),
                                                    )
                                                  ])));

                                      carrito.agregarCarrito(
                                          juguete.id.toString(),
                                          juguete.nombre,
                                          juguete.titulo,
                                          juguete.imagen,
                                          juguete.precio,
                                          1);
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 246, 246, 246),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
          });
    });
  }

  Widget ropa(BuildContext context) {
    Future<List<Producto>> getdatos() async {
      final response = await http.get(Uri.parse(
          'https://fantastic-valkyrie-6f02c3.netlify.app/db/ropa.json'));
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
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      final ropa = snapshot.data![i];
                      return Container(
                        margin: EdgeInsets.all(5),
                        width: 320,
                        height: 155,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  offset: Offset.fromDirection(1, (5)),
                                  blurRadius: 7)
                            ]),
                        child: TextButton(
                          onPressed: () {
                            showBottomSheet(
                                context: context,
                                builder: (context) {
                                  return BottomSheet(
                                    enableDrag: false,
                                    onClosing: () {},
                                    builder: (context) => Scaffold(
                                      appBar: AppBar(
                                        toolbarHeight: 80,
                                        backgroundColor:
                                            Color.fromRGBO(121, 134, 203, 1),
                                        leading: Container(
                                          alignment: Alignment.bottomCenter,
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(Icons.arrow_back)),
                                        ),
                                        title: Container(
                                            padding: EdgeInsets.only(
                                                top: 30, left: 80),
                                            child: Text(
                                              ropa.nombre,
                                              style: TextStyle(
                                                  shadows: [
                                                    Shadow(
                                                        offset: Offset
                                                            .fromDirection(
                                                                1, (4)),
                                                        blurRadius: 6)
                                                  ],
                                                  color: Colors.white,
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                      body: Container(
                                        padding:
                                            EdgeInsets.only(left: 4, right: 4),
                                        color:
                                            Color.fromRGBO(13, 23, 246, 0.16),
                                        child: Column(
                                          children: [
                                            ClipPath(
                                              clipper:
                                                  OvalBottomBorderClipper(),
                                              child: Container(
                                                width: 355,
                                                height: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: CachedNetworkImage(
                                                    placeholder: (context,
                                                            url) =>
                                                        const Image(
                                                            image: AssetImage(
                                                                'assets/cargando.gif')),
                                                    fit: BoxFit.fitHeight,
                                                    imageUrl: ropa.imagen),
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    ropa.titulo,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Patua One',
                                                        fontSize: 20,
                                                        foreground: Paint()
                                                          ..color = Colors.black
                                                          ..style =
                                                              PaintingStyle
                                                                  .stroke
                                                          ..strokeWidth = 4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    ropa.titulo,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Patua One',
                                                        fontSize: 20,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 10),
                                              alignment: Alignment.centerLeft,
                                              child: RatingBar(
                                                  glowColor: Colors.blue,
                                                  unratedColor: Colors.blue,
                                                  initialRating: ropa.ratings,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 40,
                                                  ratingWidget: RatingWidget(
                                                      full: Icon(
                                                        Icons.star,
                                                        color: Colors.blue,
                                                      ),
                                                      half: Icon(
                                                        Icons.star_half,
                                                        color: Colors.blue,
                                                      ),
                                                      empty: Icon(
                                                        Icons.star_border,
                                                        color: Colors.black,
                                                      )),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  }),
                                            ),
                                            Container(
                                              height: 165,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 10),
                                              child: Column(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Descripción:',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          'Descripción:',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          ropa.descripcion,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 18,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        3,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          ropa.descripcion,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 72,
                                              child: Row(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          'PRECIO:  ' +
                                                              ropa.precio
                                                                  .toString() +
                                                              ' USD , MLC o Cup(Al Cambio Actual) ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          'PRECIO:  ' +
                                                              ropa.precio
                                                                  .toString() +
                                                              ' USD , MLC o Cup(Al Cambio Actual) ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      72,
                                                                      238,
                                                                      81),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(child: Container()),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 3),
                                                    width: 173,
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        color: Color.fromRGBO(
                                                            13, 23, 246, 0.16)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                              SnackBar(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          1000),
                                                                  content: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                            'Añadido Al Carrito',
                                                                            style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.bold)),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(30),
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.indigo.shade300,
                                                                            child: TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => CarritoPantalla())));
                                                                                },
                                                                                child: Text('Ir Al Carrito', style: TextStyle(color: Colors.white))),
                                                                          ),
                                                                        )
                                                                      ])));

                                                          carrito.agregarCarrito(
                                                              ropa.id
                                                                  .toString(),
                                                              ropa.nombre,
                                                              ropa.titulo,
                                                              ropa.imagen,
                                                              ropa.precio,
                                                              1);
                                                        });
                                                      },
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              'Añadir Al Carrito',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Patua One',
                                                                  fontSize: 20,
                                                                  foreground:
                                                                      Paint()
                                                                        ..color =
                                                                            Colors.black
                                                                        ..style =
                                                                            PaintingStyle.stroke
                                                                        ..strokeWidth =
                                                                            4,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              'Añadir Al Carrito',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Patua One',
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 80,
                                height: 80,
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => const Image(
                                        image:
                                            AssetImage('assets/cargando.gif')),
                                    fit: BoxFit.fitHeight,
                                    imageUrl: ropa.imagen),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Container(
                                  width: 170,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Text(
                                            ropa.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 24,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            ropa.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 24,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        ropa.titulo,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: RatingBar(
                                            glowColor: Colors.blue,
                                            unratedColor: Colors.blue,
                                            initialRating: ropa.ratings,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 18,
                                            ratingWidget: RatingWidget(
                                                full: Icon(
                                                  Icons.star,
                                                  color: Colors.blue,
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: Colors.blue,
                                                ),
                                                empty: Icon(
                                                  Icons.star_border,
                                                  color: Colors.black,
                                                )),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Stack(
                                          children: [
                                            Text(
                                              ropa.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                //color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..color = Colors.black
                                                  ..strokeWidth = 2,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              ropa.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                color: Color.fromARGB(
                                                    255, 72, 238, 81),
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.indigo.shade300),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              duration:
                                                  Duration(milliseconds: 1000),
                                              content: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Añadido Al Carrito',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      child: Container(
                                                        color: Colors
                                                            .indigo.shade300,
                                                        child: TextButton(
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(MaterialPageRoute(
                                                                      builder:
                                                                          ((context) =>
                                                                              CarritoPantalla())));
                                                            },
                                                            child: Text(
                                                                'Ir Al Carrito',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white))),
                                                      ),
                                                    )
                                                  ])));

                                      carrito.agregarCarrito(
                                          ropa.id.toString(),
                                          ropa.nombre,
                                          ropa.titulo,
                                          ropa.imagen,
                                          ropa.precio,
                                          1);
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 246, 246, 246),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
          });
    });
  }

  Widget comestibles(BuildContext context) {
    Future<List<Producto>> getdatos() async {
      final response = await http.get(Uri.parse(
          'https://fantastic-valkyrie-6f02c3.netlify.app/db/comestibles.json'));
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
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      final comestibles = snapshot.data![i];
                      return Container(
                        margin: EdgeInsets.all(5),
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  offset: Offset.fromDirection(1, (5)),
                                  blurRadius: 7)
                            ]),
                        child: TextButton(
                          onPressed: () {
                            showBottomSheet(
                                context: context,
                                builder: (context) {
                                  return BottomSheet(
                                    enableDrag: false,
                                    onClosing: () {},
                                    builder: (context) => Scaffold(
                                      appBar: AppBar(
                                        toolbarHeight: 80,
                                        backgroundColor:
                                            Color.fromRGBO(121, 134, 203, 1),
                                        leading: Container(
                                          alignment: Alignment.bottomCenter,
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(Icons.arrow_back)),
                                        ),
                                        title: Container(
                                            padding: EdgeInsets.only(
                                                top: 30, left: 80),
                                            child: Text(
                                              comestibles.nombre,
                                              style: TextStyle(
                                                  shadows: [
                                                    Shadow(
                                                        offset: Offset
                                                            .fromDirection(
                                                                1, (4)),
                                                        blurRadius: 6)
                                                  ],
                                                  color: Colors.white,
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                      body: Container(
                                        padding:
                                            EdgeInsets.only(left: 4, right: 4),
                                        color:
                                            Color.fromRGBO(13, 23, 246, 0.16),
                                        child: Column(
                                          children: [
                                            ClipPath(
                                              clipper:
                                                  OvalBottomBorderClipper(),
                                              child: Container(
                                                width: 355,
                                                height: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: CachedNetworkImage(
                                                    placeholder: (context,
                                                            url) =>
                                                        const Image(
                                                            image: AssetImage(
                                                                'assets/cargando.gif')),
                                                    fit: BoxFit.fitHeight,
                                                    imageUrl:
                                                        comestibles.imagen),
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    comestibles.titulo,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Patua One',
                                                        fontSize: 25,
                                                        foreground: Paint()
                                                          ..color = Colors.black
                                                          ..style =
                                                              PaintingStyle
                                                                  .stroke
                                                          ..strokeWidth = 4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    comestibles.titulo,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Patua One',
                                                        fontSize: 25,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 10),
                                              alignment: Alignment.centerLeft,
                                              child: RatingBar(
                                                  glowColor: Colors.blue,
                                                  unratedColor: Colors.blue,
                                                  initialRating:
                                                      comestibles.ratings,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 40,
                                                  ratingWidget: RatingWidget(
                                                      full: Icon(
                                                        Icons.star,
                                                        color: Colors.blue,
                                                      ),
                                                      half: Icon(
                                                        Icons.star_half,
                                                        color: Colors.blue,
                                                      ),
                                                      empty: Icon(
                                                        Icons.star_border,
                                                        color: Colors.black,
                                                      )),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  }),
                                            ),
                                            Container(
                                              height: 165,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 10),
                                              child: Column(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Descripción:',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          'Descripción:',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          comestibles
                                                              .descripcion,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 18,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        3,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          comestibles
                                                              .descripcion,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 72,
                                              child: Row(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          'PRECIO:  ' +
                                                              comestibles.precio
                                                                  .toString() +
                                                              ' USD , MLC o Cup(Al Cambio Actual) ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          'PRECIO:  ' +
                                                              comestibles.precio
                                                                  .toString() +
                                                              ' USD , MLC o Cup(Al Cambio Actual) ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      72,
                                                                      238,
                                                                      81),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(child: Container()),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 3),
                                                    width: 173,
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        color: Color.fromRGBO(
                                                            13, 23, 246, 0.16)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                              SnackBar(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          1000),
                                                                  content: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                            'Añadido Al Carrito',
                                                                            style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.bold)),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(30),
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.indigo.shade300,
                                                                            child: TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => CarritoPantalla())));
                                                                                },
                                                                                child: Text('Ir Al Carrito', style: TextStyle(color: Colors.white))),
                                                                          ),
                                                                        )
                                                                      ])));

                                                          carrito.agregarCarrito(
                                                              comestibles.id
                                                                  .toString(),
                                                              comestibles
                                                                  .nombre,
                                                              comestibles
                                                                  .titulo,
                                                              comestibles
                                                                  .imagen,
                                                              comestibles
                                                                  .precio,
                                                              1);
                                                        });
                                                      },
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              'Añadir Al Carrito',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Patua One',
                                                                  fontSize: 20,
                                                                  foreground:
                                                                      Paint()
                                                                        ..color =
                                                                            Colors.black
                                                                        ..style =
                                                                            PaintingStyle.stroke
                                                                        ..strokeWidth =
                                                                            4,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              'Añadir Al Carrito',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Patua One',
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 80,
                                height: 80,
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => const Image(
                                        image:
                                            AssetImage('assets/cargando.gif')),
                                    fit: BoxFit.fitHeight,
                                    imageUrl: comestibles.imagen),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Container(
                                  width: 170,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Text(
                                            comestibles.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 25,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            comestibles.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        comestibles.titulo,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: RatingBar(
                                            glowColor: Colors.blue,
                                            unratedColor: Colors.blue,
                                            initialRating: comestibles.ratings,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            ratingWidget: RatingWidget(
                                                full: Icon(
                                                  Icons.star,
                                                  color: Colors.blue,
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: Colors.blue,
                                                ),
                                                empty: Icon(
                                                  Icons.star_border,
                                                  color: Colors.black,
                                                )),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Stack(
                                          children: [
                                            Text(
                                              comestibles.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                //color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..color = Colors.black
                                                  ..strokeWidth = 2,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              comestibles.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                color: Color.fromARGB(
                                                    255, 72, 238, 81),
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.indigo.shade300),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              duration:
                                                  Duration(milliseconds: 1000),
                                              content: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Añadido Al Carrito',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      child: Container(
                                                        color: Colors
                                                            .indigo.shade300,
                                                        child: TextButton(
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(MaterialPageRoute(
                                                                      builder:
                                                                          ((context) =>
                                                                              CarritoPantalla())));
                                                            },
                                                            child: Text(
                                                                'Ir Al Carrito',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white))),
                                                      ),
                                                    )
                                                  ])));

                                      carrito.agregarCarrito(
                                          comestibles.id.toString(),
                                          comestibles.nombre,
                                          comestibles.titulo,
                                          comestibles.imagen,
                                          comestibles.precio,
                                          1);
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 246, 246, 246),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
          });
    });
  }

  Widget higiene(BuildContext context) {
    Future<List<Producto>> getdatos() async {
      final response = await http.get(Uri.parse(
          'https://fantastic-valkyrie-6f02c3.netlify.app/db/higiene.json'));
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
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      final higiene = snapshot.data![i];
                      return Container(
                        margin: EdgeInsets.all(5),
                        width: 320,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  offset: Offset.fromDirection(1, (5)),
                                  blurRadius: 7)
                            ]),
                        child: TextButton(
                          onPressed: () {
                            showBottomSheet(
                                context: context,
                                builder: (context) {
                                  return BottomSheet(
                                    enableDrag: false,
                                    onClosing: () {},
                                    builder: (context) => Scaffold(
                                      appBar: AppBar(
                                        toolbarHeight: 80,
                                        backgroundColor:
                                            Color.fromRGBO(121, 134, 203, 1),
                                        leading: Container(
                                          alignment: Alignment.bottomCenter,
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(Icons.arrow_back)),
                                        ),
                                        title: Container(
                                            padding: EdgeInsets.only(
                                                top: 30, left: 80),
                                            child: Text(
                                              higiene.nombre,
                                              style: TextStyle(
                                                  shadows: [
                                                    Shadow(
                                                        offset: Offset
                                                            .fromDirection(
                                                                1, (4)),
                                                        blurRadius: 6)
                                                  ],
                                                  color: Colors.white,
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                      body: Container(
                                        padding:
                                            EdgeInsets.only(left: 4, right: 4),
                                        color:
                                            Color.fromRGBO(13, 23, 246, 0.16),
                                        child: Column(
                                          children: [
                                            ClipPath(
                                              clipper:
                                                  OvalBottomBorderClipper(),
                                              child: Container(
                                                width: 355,
                                                height: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: CachedNetworkImage(
                                                    placeholder: (context,
                                                            url) =>
                                                        const Image(
                                                            image: AssetImage(
                                                                'assets/cargando.gif')),
                                                    fit: BoxFit.fitHeight,
                                                    imageUrl: higiene.imagen),
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    higiene.titulo,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Patua One',
                                                        fontSize: 24,
                                                        foreground: Paint()
                                                          ..color = Colors.black
                                                          ..style =
                                                              PaintingStyle
                                                                  .stroke
                                                          ..strokeWidth = 4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: Text(
                                                    higiene.titulo,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Patua One',
                                                        fontSize: 24,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 8),
                                              alignment: Alignment.centerLeft,
                                              child: RatingBar(
                                                  glowColor: Colors.blue,
                                                  unratedColor: Colors.blue,
                                                  initialRating:
                                                      higiene.ratings,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 38,
                                                  ratingWidget: RatingWidget(
                                                      full: Icon(
                                                        Icons.star,
                                                        color: Colors.blue,
                                                      ),
                                                      half: Icon(
                                                        Icons.star_half,
                                                        color: Colors.blue,
                                                      ),
                                                      empty: Icon(
                                                        Icons.star_border,
                                                        color: Colors.black,
                                                      )),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  }),
                                            ),
                                            Container(
                                              height: 165,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 10),
                                              child: Column(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Descripción:',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 18,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          'Descripción:',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          higiene.descripcion,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 16,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        3,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          higiene.descripcion,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 72,
                                              child: Row(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          'PRECIO:  ' +
                                                              higiene.precio
                                                                  .toString() +
                                                              ' USD , MLC o Cup(Al Cambio Actual) ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              foreground:
                                                                  Paint()
                                                                    ..color =
                                                                        Colors
                                                                            .black
                                                                    ..style =
                                                                        PaintingStyle
                                                                            .stroke
                                                                    ..strokeWidth =
                                                                        4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 150,
                                                        child: Text(
                                                          'PRECIO:  ' +
                                                              higiene.precio
                                                                  .toString() +
                                                              ' USD , MLC o Cup(Al Cambio Actual) ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Patua One',
                                                              fontSize: 20,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      72,
                                                                      238,
                                                                      81),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(child: Container()),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 3),
                                                    width: 173,
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        color: Color.fromRGBO(
                                                            13, 23, 246, 0.16)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                              SnackBar(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          1000),
                                                                  content: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                            'Añadido Al Carrito',
                                                                            style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.bold)),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(30),
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.indigo.shade300,
                                                                            child: TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => CarritoPantalla())));
                                                                                },
                                                                                child: Text('Ir Al Carrito', style: TextStyle(color: Colors.white))),
                                                                          ),
                                                                        )
                                                                      ])));

                                                          carrito.agregarCarrito(
                                                              higiene.id
                                                                  .toString(),
                                                              higiene.nombre,
                                                              higiene.titulo,
                                                              higiene.imagen,
                                                              higiene.precio,
                                                              1);
                                                        });
                                                      },
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              'Añadir Al Carrito',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Patua One',
                                                                  fontSize: 20,
                                                                  foreground:
                                                                      Paint()
                                                                        ..color =
                                                                            Colors.black
                                                                        ..style =
                                                                            PaintingStyle.stroke
                                                                        ..strokeWidth =
                                                                            4,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              'Añadir Al Carrito',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Patua One',
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 80,
                                height: 80,
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => const Image(
                                        image:
                                            AssetImage('assets/cargando.gif')),
                                    fit: BoxFit.fitHeight,
                                    imageUrl: higiene.imagen),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 0),
                                child: Container(
                                  width: 170,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Text(
                                            higiene.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 22,
                                                foreground: Paint()
                                                  ..color = Colors.black
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            higiene.nombre,
                                            style: TextStyle(
                                                letterSpacing: 3,
                                                fontFamily: 'Patua One',
                                                fontSize: 22,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        higiene.titulo,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: RatingBar(
                                            glowColor: Colors.blue,
                                            unratedColor: Colors.blue,
                                            initialRating: higiene.ratings,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            ratingWidget: RatingWidget(
                                                full: Icon(
                                                  Icons.star,
                                                  color: Colors.blue,
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: Colors.blue,
                                                ),
                                                empty: Icon(
                                                  Icons.star_border,
                                                  color: Colors.black,
                                                )),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Stack(
                                          children: [
                                            Text(
                                              higiene.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                //color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..color = Colors.black
                                                  ..strokeWidth = 2,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              higiene.precio.toString() +
                                                  ' USD, MLC o CUP   (Al Cambio Actual)',
                                              style: TextStyle(
                                                inherit: false,
                                                color: Color.fromARGB(
                                                    255, 72, 238, 81),
                                                fontSize: 15,
                                                fontFamily: 'Passion One',
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.indigo.shade300),
                                child: TextButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            duration:
                                                Duration(milliseconds: 1000),
                                            content: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('Añadido Al Carrito',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: Container(
                                                      color: Colors
                                                          .indigo.shade300,
                                                      child: TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(MaterialPageRoute(
                                                                    builder:
                                                                        ((context) =>
                                                                            CarritoPantalla())));
                                                          },
                                                          child: Text(
                                                              'Ir Al Carrito',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white))),
                                                    ),
                                                  )
                                                ])));

                                    setState(() {
                                      carrito.agregarCarrito(
                                          higiene.id.toString(),
                                          higiene.nombre,
                                          higiene.titulo,
                                          higiene.imagen,
                                          higiene.precio,
                                          1);
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 246, 246, 246),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
          });
    });
  }
}
