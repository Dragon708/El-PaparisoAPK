import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import '../../Models/Expansion.dart';
import '../../Models/Productos.dart';
import '../../carrito/Carrito.dart';
import '../../carrito/Carritopage.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
        body: Container(
            height: 1400,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 219, 217, 228),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: tamano.width * 1.0,
                      height: 70,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset.fromDirection(1, (4)), blurRadius: 6)
                      ], color: Colors.indigo.shade300),
                      child: Row(
                        children: [
                          IconButton(
                              alignment: Alignment.bottomLeft,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 25,
                                shadows: [
                                  Shadow(
                                      offset: Offset.fromDirection(1, (4)),
                                      blurRadius: 6)
                                ],
                              )),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'EL PARAISO PERRUNO',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                            offset:
                                                Offset.fromDirection(1, (4)),
                                            blurRadius: 6)
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
                                            offset:
                                                Offset.fromDirection(1, (4)),
                                            blurRadius: 6)
                                      ],
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                )
                              ]),
                          Container(
                              padding: EdgeInsets.only(top: 20, left: 5),
                              child: Badge(
                                  padding: EdgeInsets.all(7),
                                  badgeContent:
                                      Text(carrito.numeroItem.toString()),
                                  child: IconButton(
                                      padding: EdgeInsets.all(4),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (BuildContext) =>
                                                    CarritoPantalla()));
                                      },
                                      icon: Icon(
                                        Icons.shopping_cart_checkout,
                                        shadows: [
                                          Shadow(
                                              offset:
                                                  Offset.fromDirection(1, (4)),
                                              blurRadius: 6)
                                        ],
                                        size: 35,
                                        color: Colors.white,
                                      )))),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          width: 230,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: ' Buscar aqui...'),
                          )),
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Text(
                    'Categorias',
                    style: TextStyle(
                        color: Colors.indigo.shade300,
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                                    color: Colors.indigo.shade300,
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                                    color: Colors.indigo.shade300,
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                                    color: Colors.indigo.shade300,
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                                    color: Colors.indigo.shade300,
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                                    color: Colors.indigo.shade300,
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                                    color: Colors.indigo.shade300,
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
                    flex: 4,
                    child: PageView(
                      controller: controller,
                      children: pageview,
                    )),
              ],
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo.shade300,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      );
    });
  }

  Widget collares(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return ListView.builder(
          itemCount: Collares.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              width: 320,
              height: 133,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset.fromDirection(1, (5)), blurRadius: 7)
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
                                    Collares[index].nombre,
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              offset:
                                                  Offset.fromDirection(1, (4)),
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
                                        child: Image(
                                            image: AssetImage('assets/images/' +
                                                Collares[index].imagen))),
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 300,
                                        child: Text(
                                          Collares[index].titulo,
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
                                          Collares[index].titulo,
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
                                        initialRating: Collares[index].ratings,
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
                                    height: 185,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
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
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 4,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Stack(
                                          children: [
                                            Container(
                                              child: Text(
                                                collarssss[0].descripcion,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontFamily: 'Patua One',
                                                    fontSize: 18,
                                                    foreground: Paint()
                                                      ..color = Colors.black
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 2,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                collarssss[0].descripcion,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontFamily: 'Patua One',
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              child: Text(
                                                'PRECIO:  ' +
                                                    Collares[index]
                                                        .precio
                                                        .toStringAsFixed(0) +
                                                    ' CUP',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: 'Patua One',
                                                    fontSize: 20,
                                                    foreground: Paint()
                                                      ..color = Colors.black
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 4,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'PRECIO:  ' +
                                                    Collares[index]
                                                        .precio
                                                        .toStringAsFixed(0) +
                                                    ' CUP',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: 'Patua One',
                                                    fontSize: 20,
                                                    color: Color.fromARGB(
                                                        255, 72, 238, 81),
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Color.fromRGBO(
                                                  13, 23, 246, 0.16)),
                                          child: TextButton(
                                            onPressed: () {},
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
                                                          ..style =
                                                              PaintingStyle
                                                                  .stroke
                                                          ..strokeWidth = 4,
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                                        fontWeight:
                                                            FontWeight.bold),
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
                      child: Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                              'assets/images/' + Collares[index].imagen)),
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
                                  Collares[index].nombre,
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
                                  Collares[index].nombre,
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
                              Collares[index].titulo,
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
                                  initialRating: Collares[index].ratings,
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
                              padding: const EdgeInsets.only(left: 85),
                              child: Stack(
                                children: [
                                  Text(
                                      Collares[index].precio.toString() + 'CUP',
                                      style: TextStyle(
                                        inherit: false,
                                        //color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Passion One',
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..color = Colors.black
                                          ..strokeWidth = 5,
                                      )),
                                  Text(
                                      Collares[index].precio.toString() + 'CUP',
                                      style: TextStyle(
                                        inherit: false,
                                        color: Color.fromARGB(255, 72, 238, 81),
                                        fontSize: 20,
                                        fontFamily: 'Passion One',
                                      )),
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
                            carrito.agregarCarrito(
                                Collares[index].id.toString(),
                                Collares[index].nombre,
                                Collares[index].titulo,
                                Collares[index].imagen,
                                Collares[index].precio,
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
  }

  Widget pecheras(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return ListView.builder(
          itemCount: Pecheras.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              width: 320,
              height: 117,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset.fromDirection(1, (5)), blurRadius: 7)
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 80,
                    height: 80,
                    child: Image(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                            'assets/images/' + Pecheras[index].imagen)),
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
                                Pecheras[index].nombre,
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
                                Pecheras[index].nombre,
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
                            Pecheras[index].titulo,
                            style: TextStyle(
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
                                initialRating: Pecheras[index].ratings,
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
                            padding: const EdgeInsets.only(left: 85),
                            child: Stack(
                              children: [
                                Text(Pecheras[index].precio.toString() + 'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      //color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Passion One',
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..color = Colors.black
                                        ..strokeWidth = 5,
                                    )),
                                Text(Pecheras[index].precio.toString() + 'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      color: Color.fromARGB(255, 72, 238, 81),
                                      fontSize: 20,
                                      fontFamily: 'Passion One',
                                    )),
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
                          carrito.agregarCarrito(
                              Pecheras[index].id.toString(),
                              Pecheras[index].nombre,
                              Pecheras[index].titulo,
                              Pecheras[index].imagen,
                              Pecheras[index].precio,
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
            );
          });
    });
  }

  Widget juguetes(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return ListView.builder(
          itemCount: Juguetes.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              width: 320,
              height: 117,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset.fromDirection(1, (5)), blurRadius: 7)
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 80,
                    height: 80,
                    child: Image(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                            'assets/images/' + Juguetes[index].imagen)),
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
                                Juguetes[index].nombre,
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
                                Juguetes[index].nombre,
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
                            Juguetes[index].titulo,
                            style: TextStyle(
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
                                initialRating: Juguetes[index].ratings,
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
                            padding: const EdgeInsets.only(left: 85),
                            child: Stack(
                              children: [
                                Text(Juguetes[index].precio.toString() + 'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      //color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Passion One',
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..color = Colors.black
                                        ..strokeWidth = 5,
                                    )),
                                Text(Juguetes[index].precio.toString() + 'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      color: Color.fromARGB(255, 72, 238, 81),
                                      fontSize: 20,
                                      fontFamily: 'Passion One',
                                    )),
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
                          carrito.agregarCarrito(
                              Juguetes[index].id.toString(),
                              Juguetes[index].nombre,
                              Juguetes[index].titulo,
                              Juguetes[index].imagen,
                              Juguetes[index].precio,
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
            );
          });
    });
  }

  Widget ropa(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return ListView.builder(
          itemCount: Ropa.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              width: 320,
              height: 117,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset.fromDirection(1, (5)), blurRadius: 7)
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 80,
                    height: 80,
                    child: Image(
                        fit: BoxFit.fitHeight,
                        image:
                            AssetImage('assets/images/' + Ropa[index].imagen)),
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
                                Ropa[index].nombre,
                                style: TextStyle(
                                    letterSpacing: 3,
                                    fontFamily: 'Patua One',
                                    fontSize: 20,
                                    foreground: Paint()
                                      ..color = Colors.black
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                Ropa[index].nombre,
                                style: TextStyle(
                                    letterSpacing: 3,
                                    fontFamily: 'Patua One',
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            Ropa[index].titulo,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 4),
                            alignment: Alignment.centerLeft,
                            child: RatingBar(
                                glowColor: Colors.blue,
                                unratedColor: Colors.blue,
                                initialRating: Ropa[index].ratings,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 19,
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
                            padding: const EdgeInsets.only(left: 85),
                            child: Stack(
                              children: [
                                Text(Ropa[index].precio.toString() + 'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      //color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Passion One',
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..color = Colors.black
                                        ..strokeWidth = 5,
                                    )),
                                Text(Ropa[index].precio.toString() + 'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      color: Color.fromARGB(255, 72, 238, 81),
                                      fontSize: 20,
                                      fontFamily: 'Passion One',
                                    )),
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
                          carrito.agregarCarrito(
                              Ropa[index].id.toString(),
                              Ropa[index].nombre,
                              Ropa[index].titulo,
                              Ropa[index].imagen,
                              Ropa[index].precio,
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
            );
          });
    });
  }

  Widget comestibles(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return ListView.builder(
          itemCount: Comestibles.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              width: 320,
              height: 117,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset.fromDirection(1, (5)), blurRadius: 7)
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 80,
                    height: 80,
                    child: Image(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                            'assets/images/' + Comestibles[index].imagen)),
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
                                Comestibles[index].nombre,
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
                                Comestibles[index].nombre,
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
                            Comestibles[index].titulo,
                            style: TextStyle(
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
                                initialRating: Comestibles[index].ratings,
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
                            padding: const EdgeInsets.only(left: 85),
                            child: Stack(
                              children: [
                                Text(
                                    Comestibles[index].precio.toString() +
                                        'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      //color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Passion One',
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..color = Colors.black
                                        ..strokeWidth = 5,
                                    )),
                                Text(
                                    Comestibles[index].precio.toString() +
                                        'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      color: Color.fromARGB(255, 72, 238, 81),
                                      fontSize: 20,
                                      fontFamily: 'Passion One',
                                    )),
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
                          carrito.agregarCarrito(
                              Comestibles[index].id.toString(),
                              Comestibles[index].nombre,
                              Comestibles[index].titulo,
                              Comestibles[index].imagen,
                              Comestibles[index].precio,
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
            );
          });
    });
  }

  Widget higiene(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return ListView.builder(
          itemCount: Higiene.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              width: 320,
              height: 117,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset.fromDirection(1, (5)), blurRadius: 7)
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 80,
                    height: 80,
                    child: Image(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                            'assets/images/' + Higiene[index].imagen)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Container(
                      width: 180,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Text(
                                Higiene[index].nombre,
                                style: TextStyle(
                                    letterSpacing: 2,
                                    fontFamily: 'Patua One',
                                    fontSize: 18,
                                    foreground: Paint()
                                      ..color = Colors.black
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                Higiene[index].nombre,
                                style: TextStyle(
                                    letterSpacing: 2,
                                    fontFamily: 'Patua One',
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            Higiene[index].titulo,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
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
                                initialRating: Higiene[index].ratings,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 17,
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
                            padding: const EdgeInsets.only(left: 85),
                            child: Stack(
                              children: [
                                Text(Higiene[index].precio.toString() + 'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      //color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Passion One',
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..color = Colors.black
                                        ..strokeWidth = 5,
                                    )),
                                Text(Higiene[index].precio.toString() + 'CUP',
                                    style: TextStyle(
                                      inherit: false,
                                      color: Color.fromARGB(255, 72, 238, 81),
                                      fontSize: 16,
                                      fontFamily: 'Passion One',
                                    )),
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
                          carrito.agregarCarrito(
                              Higiene[index].id.toString(),
                              Higiene[index].nombre,
                              Higiene[index].titulo,
                              Higiene[index].imagen,
                              Higiene[index].precio,
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
            );
          });
    });
  }
}
