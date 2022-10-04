class Producto {
  final int id;
  final String nombre;
  final String titulo;
  final String imagen;
  final double precio;
  final double ratings;
  final String descripcion;

  const Producto(
      {required this.id,
      required this.nombre,
      required this.titulo,
      required this.imagen,
      required this.precio,
      required this.ratings,
      required this.descripcion});

  factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        id: json['id'],
        nombre: json['nombre'],
        titulo: json['titulo'],
        imagen: json['imagen'],
        precio: json['precio'],
        ratings: json['ratings'],
        descripcion: json['descripcion'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'titulo': titulo,
        'imagen': imagen,
        'precio': precio,
        'rating': ratings,
        'descripcion': descripcion,
      };
}

/*final Collares = [
  Producto(
      id: 1,
      nombre: 'Collar',
      titulo: 'Collar Con Cascabel Razas Pequeñas',
      imagen: 'Collar3.png',
      precio: 380,
      ratings: 3),
  Producto(
      id: 2,
      nombre: 'Collar',
      titulo: 'Collar Paticas Razas Pequeñas',
      imagen: 'Collar1.png',
      precio: 400,
      ratings: 3.5),
  Producto(
      id: 3,
      nombre: 'Collar',
      titulo: 'Collar Refractante Razas Pequeñas',
      imagen: 'Collar2.png',
      precio: 400,
      ratings: 3.5),
  Producto(
      id: 4,
      nombre: 'Collar',
      titulo: 'Collar Brillos Razas Pequeñas',
      imagen: 'Collar4.png',
      precio: 400,
      ratings: 3.5),
  Producto(
      id: 5,
      nombre: 'Collar',
      titulo: 'Collar Nieve Razas Pequeñas',
      imagen: 'Collar5.png',
      precio: 450,
      ratings: 3.5),
  Producto(
      id: 6,
      nombre: 'Collar',
      titulo: 'Collar Silicona Razas Pequeñas',
      imagen: 'Collar6.png',
      precio: 450,
      ratings: 3.5),
  Producto(
      id: 7,
      nombre: 'Collar',
      titulo: 'Collar Lazos Razas Pequeñas',
      imagen: 'Collar7.png',
      precio: 450,
      ratings: 3.5),
  Producto(
      id: 8,
      nombre: 'Collar',
      titulo: 'Collar Satinado Razas Pequeñas',
      imagen: 'Collar8.png',
      precio: 450,
      ratings: 3.5),
  Producto(
      id: 9,
      nombre: 'Collar',
      titulo: 'Collar Lazos Razas Pequeñas',
      imagen: 'Collar9.png',
      precio: 500,
      ratings: 3.5),
  Producto(
      id: 10,
      nombre: 'Collar',
      titulo: 'Collar Con Pajarita Razas Pequeñas',
      imagen: 'Collar10.png',
      precio: 500,
      ratings: 3.5),
  Producto(
      id: 11,
      nombre: 'Collar',
      titulo: 'Collar Pañuelo Razas Pequeñas',
      imagen: 'Collar11.png',
      precio: 500,
      ratings: 3.5),
  Producto(
      id: 12,
      nombre: 'Collar',
      titulo: 'Collar Grueso Razas Pequeñas y Medianas',
      imagen: 'Collar12.png',
      precio: 500,
      ratings: 3.5),
  Producto(
      id: 13,
      nombre: 'Collar',
      titulo: 'Collar Grueso Refractante Razas Medianas',
      imagen: 'Collar13.png',
      precio: 600,
      ratings: 3.5),
  Producto(
      id: 14,
      nombre: 'Collar',
      titulo: 'Collar Pinchos Razas Grandes',
      imagen: 'Collar14.jpg',
      precio: 700,
      ratings: 3.5),
];*/

final Pecheras = [
  Producto(
      id: 15,
      nombre: 'Pechera',
      titulo: 'Pechera Razas Pequeñas',
      imagen: 'pecherapequena copia.png',
      precio: 700,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 16,
      nombre: 'Pechera',
      titulo: 'Pechera Gruesa Razas Pequeñas',
      imagen: 'pechera4.jpg',
      precio: 1000,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 17,
      nombre: 'Pechera',
      titulo: 'Pechera Arcoiris Razas Pequeñas',
      imagen: 'pecheramediana copia.png',
      precio: 1500,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 18,
      nombre: 'Pechera',
      titulo: 'Pechera Gruesa Razas Grandes',
      imagen: 'Sin título-1.jpg',
      precio: 2000,
      ratings: 3.5,
      descripcion: 's'),
];

final Juguetes = [
  Producto(
      id: 19,
      nombre: 'Juguete',
      titulo: 'Juguete Chillón Erizo',
      imagen: 'juguete2.png',
      precio: 400,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 20,
      nombre: 'Juguete',
      titulo: 'Juguete Chillón Estrella',
      imagen: 'juguete1.png',
      precio: 400,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 21,
      nombre: 'Juguete',
      titulo: 'Juguete Chillon Mando',
      imagen: 'mando.png',
      precio: 450,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 22,
      nombre: 'Juguete',
      titulo: 'Juguete Chillón Hueso',
      imagen: 'hueso.png',
      precio: 500,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 23,
      nombre: 'Juguete',
      titulo: 'Juguete Chillón Chuleta',
      imagen: 'bistec.png',
      precio: 500,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 24,
      nombre: 'Juguete',
      titulo: 'Juguete Super Resistente',
      imagen: 'juguete5.png',
      precio: 900,
      ratings: 3.5,
      descripcion: 's'),
];

final Ropa = [
  Producto(
      id: 25,
      nombre: 'Lazos',
      titulo: 'Pareja De Lazos',
      imagen: 'lazos.jpg',
      precio: 100,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 26,
      nombre: 'Ropa',
      titulo: 'Sueter Azul Razas Pequeñas',
      imagen: 'sueterazul.png',
      precio: 400,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 27,
      nombre: 'Ropa',
      titulo: 'Sueter Negro Razas Pequeñas',
      imagen: 'sueternegro.png',
      precio: 400,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 28,
      nombre: 'Ropa',
      titulo: 'Calcetines Con Fondo Engomado Para Perros y Gatos',
      imagen: 'medias.jpg',
      precio: 400,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 29,
      nombre: 'Ropa',
      titulo: 'Pulover Rosado Razas Pequeñas',
      imagen: 'rosado.png',
      precio: 550,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 30,
      nombre: 'Ropa',
      titulo: 'Pulover Azul Razas Pequeñas',
      imagen: 'azul.png',
      precio: 550,
      ratings: 3.5,
      descripcion: 's'),
];

final Comestibles = [
  Producto(
      id: 31,
      nombre: 'Carnaza',
      titulo: 'Palitos De Carnaza Molida Con Vitaminas',
      imagen: 'carnaza1.jpg',
      precio: 60,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 32,
      nombre: 'Carnaza',
      titulo: 'Carnaza Hueso Comestible Pequeña',
      imagen: 'carnaza2.jpg',
      precio: 100,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 33,
      nombre: 'Carnaza',
      titulo: 'Carnaza Grande Con Forma De Dónuts',
      imagen: 'carnaza3.jpg',
      precio: 400,
      ratings: 3.5,
      descripcion: 's'),
];

final Higiene = [
  Producto(
      id: 34,
      nombre: 'Suplemento',
      titulo: 'Multivitaminico (Calcio,D2,B,A)',
      imagen: 'pastillas.png',
      precio: 20,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 35,
      nombre: 'Antiparasitario',
      titulo: 'Tabletas De Desparacitacion PET-MAX(Adultos)',
      imagen: 'desparacitacion.png',
      precio: 150,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 36,
      nombre: 'Utensilio',
      titulo: 'Plato Plastico Pequeño',
      imagen: 'plato.png',
      precio: 200,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 37,
      nombre: 'Cepillo Dental',
      titulo: 'Cepillo De Dientes Doble Para Perros',
      imagen: 'cepillodientes.jpg',
      precio: 250,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 38,
      nombre: 'Collar Antipulgas',
      titulo: 'Collar Antipulgas Para Razas Pequeñas',
      imagen: 'collaranti.png',
      precio: 450,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 39,
      nombre: 'Peine',
      titulo: 'Peine Para Perros',
      imagen: 'peines.jpg',
      precio: 500,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 40,
      nombre: 'Cepillo',
      titulo: 'Cepillo Doble Pequeño Para Perros',
      imagen: 'cepillo.jpg',
      precio: 650,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 41,
      nombre: 'Cepillo',
      titulo: 'Cepillo Doble Grande Para Perros',
      imagen: 'cepillo.jpg',
      precio: 800,
      ratings: 3.5,
      descripcion: 's'),
  Producto(
      id: 42,
      nombre: 'Cepillo',
      titulo: 'Cepillo Almoaza',
      imagen: 'almoaza.jpg',
      precio: 800,
      ratings: 3.5,
      descripcion: 's'),
];
