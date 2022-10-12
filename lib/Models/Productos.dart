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
