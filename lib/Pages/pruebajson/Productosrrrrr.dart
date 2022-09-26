// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

Future<List<User>> getUsers() async {
  String url = 'https://profound-bubblegum-e84e98.netlify.app/db.json';
  final response = await http.get(Uri.parse(url));
  final jsonData = json.decode(response.body);
  return jsonData.map<User>(User.fromJson).toList();
}

List<User> usersFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String usersToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  final int id;
  final String nombre;
  final String titulo;
  final String imagen;
  final int precio;
  final int ratings;

  const User(
      {required this.id,
      required this.nombre,
      required this.titulo,
      required this.imagen,
      required this.precio,
      required this.ratings});

  factory User.fromJson(json) => User(
        id: json['id'],
        nombre: json['nombre'],
        titulo: json['titulo'],
        imagen: json['imagen'],
        precio: json['precio'],
        ratings: json['ratings'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'titulo': titulo,
        'imagen': imagen,
        'precio': precio,
        'rating': ratings,
      };
}
