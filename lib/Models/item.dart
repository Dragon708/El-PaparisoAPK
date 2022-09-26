class Item {
  String id;
  String nombre;
  String title;
  String imagen;
  double precio;
  int cantidad;

  Item({
    required this.id,
    required this.nombre,
    required this.title,
    required this.imagen,
    required this.precio,
    required this.cantidad,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json['id'],
        nombre: json['nombre'],
        title: json['title'],
        imagen: json['imagen'],
        precio: json['precio'],
        cantidad: json['cantidad'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'title': title,
        'imagen': imagen,
        'precio': precio,
        'cantidad': cantidad,
      };

  factory Item.map(Map<String, dynamic> obj) => Item(
        id: obj['id'],
        nombre: obj['nombre'],
        title: obj['title'],
        imagen: obj['imagen'],
        precio: obj['precio'],
        cantidad: obj['cantidad'],
      );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['nombre'] = nombre;
    map['title'] = title;
    map['imagen'] = imagen;
    map['precio'] = precio;
    map['cantidad'] = cantidad;

    return map;
  }
}
