import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/models/food.dart';

class CartItem{
  Food food;
  List <Addon> selectedAddons;
  int quantity;

  CartItem({required this.food, required this.selectedAddons, required this.quantity});

  double get totalprice {
    double addAddonsPrice = selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addAddonsPrice) * quantity;
  }
}