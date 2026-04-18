import 'package:belladona_app_v01/modelos/item.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // Listado de items a la venta
  List<Item> itemShop = [
    Item(
      'Pulsera Roma', 
      '\$ 50.500', 
      'assets/PulseraRoma.jpg', 
      'Pulsera para personalizar de acero quirúrgico con cadena chata combinada con chapita.'
    ),
    Item(
      'Pulsera Forcet',
      '\$42.500',
      'assets/PulseraForcet.png',
      'Pulsera forcet de acero quirúrgico con dije circular grabado personalizado.'
    ),
    Item(
      'Pulsera Cuore',
      '\$13.000',
      'assets/pulsera_cuore.png',
      'Pulsera de hilo negro regulable con dije con forma de corazón.'
    ),
    Item(
      'Collar Chapita Militar',
      '\$157.500',
      'assets/CollarChapitaMilitar.png',
      'Les contamos que esta nueva línea de plata 925, es artesanal por lo que cada grabado tiene su impronta.'
    ),
  ];

  // Listado de items en el carrito del usuario
  List<Item> userCart = [];

  // get - Obtener la lista de items a la venta
  List<Item> getItemList() {
    return itemShop;
  }

  // get - Obtener el carrito
  List<Item> getUserCart() {
    return userCart;
  }

  // Agregar items al carrito
  void addItemToCart(Item item) {
    userCart.add(item);
    notifyListeners();
  }

  // Borrar items del carrito
  void removeItemFromCart(Item item) {
    userCart.remove(item);
    notifyListeners();
  }

}