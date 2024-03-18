import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/services/restauran_service.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            title: Text('Cart'),
            backgroundColor: Theme.of(context).colorScheme.background,
            actions: [
              IconButton(icon: Icon(Icons.delete), onPressed: () => restaurant.clearCart(),)
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) => MyCartTile(
                      cartItem: userCart[index], 
                      onDecrement: () => restaurant.removeFromCart(userCart[index]), 
                      onIncrement: () => restaurant.addToCart(userCart[index].food, userCart[index].selectedAddons)
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/payment"),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
                  child: Text('Checkout (${restaurant.getTotalItemCount()} items) - \$${restaurant.getTotalPrice().toStringAsFixed(2)}', 
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
                ),
              ),
              const SizedBox(height: 50,)
            ],
          ),
        );
      },
    );
  }
}
