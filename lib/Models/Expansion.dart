class Prueba {
  final int id;
  final String nombre;
  final String titulo;
  final String imagen;
  final double precio;
  final double ratings;
  final String descripcion;

  const Prueba(
      {required this.id,
      required this.nombre,
      required this.titulo,
      required this.imagen,
      required this.precio,
      required this.ratings,
      required this.descripcion});

  factory Prueba.fromJson(Map<String, dynamic> json) => Prueba(
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

final collarssss = [
  Prueba(
      id: 1,
      nombre: 'Collar',
      titulo: 'Collarrverde',
      imagen: 'Collar1.png',
      precio: 200,
      ratings: 3.5,
      descripcion:
          'svawjksfkawbjkfn3ni4tghrgug  j jsfksdjf kdfkaskf ka  a lj lka l  kl alksalkgja al gjlag jg pg p protuto     lgakkglgdjlg g l g   k; kg;')
];
