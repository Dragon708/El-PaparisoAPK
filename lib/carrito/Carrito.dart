import 'package:flutter/material.dart';
import 'package:paraisoperrunoapk/Models/item.dart';

class Carrito extends ChangeNotifier {
  Map<String, Item> _item = {};
  Map<String, Item> get item {
    return {..._item};
  }

  int get numeroItem {
    return _item.length;
  }

  double get montoTotal {
    var total = 0.0;
    item.forEach(
        (key, elementos) => total += elementos.precio * elementos.cantidad);
    return total;
  }

  void agregarCarrito(
    String id,
    String nombre,
    String title,
    String imagen,
    double precio,
    int cantidad,
  ) {
    if (_item.containsKey(id)) {
      _item.update(
          id,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              title: old.title,
              imagen: old.imagen,
              precio: old.precio,
              cantidad: old.cantidad + 1));
    } else {
      _item.putIfAbsent(
          id,
          () => Item(
              id: id,
              nombre: nombre,
              title: title,
              imagen: imagen,
              precio: precio,
              cantidad: 1));
    }
  }

  void removerItem(String id) {
    _item.remove(id);
  }

  void incrementarCantidadItem(String id) {
    if (_item.containsKey(id)) {
      _item.update(
          id,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              title: old.title,
              imagen: old.imagen,
              precio: old.precio,
              cantidad: old.cantidad + 1));
    }
  }

  void DecrementarCantidadItem(String id) {
    if (!_item.containsKey(id)) return;
    if (_item[id] != null) if (_item[id]!.cantidad > 1) {
      _item.update(
          id,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              title: old.title,
              imagen: old.imagen,
              precio: old.precio,
              cantidad: old.cantidad - 1));
    } else {
      _item.remove(id);
    }
  }

  void removeCarrito() {
    _item = {};
  }
}
