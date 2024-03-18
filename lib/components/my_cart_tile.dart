import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantity_selector.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';

// ignore: must_be_immutable
class MyCartTile extends StatelessWidget {
  MyCartTile({super.key, required this.cartItem, required this.onDecrement, required this.onIncrement});

  final CartItem cartItem;
  Function()? onDecrement;
  Function()? onIncrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        title: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(cartItem.food.imagePath, height: 100, width: 100,)
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Text("\$" + cartItem.food.price.toString(), style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.inversePrimary),),
                      const SizedBox(height: 10,),
                      MyQuantitySelector(onDecrement: onDecrement, quantity: cartItem.quantity, onIncrement: onIncrement,),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0:60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectedAddons.map((addon) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FilterChip(
                    label: Row(
                      children: [
                        Text(addon.name),
                        Text(' (\$${addon.price})'), // Corrected typo here
                      ],
                    ),
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.primary
                      )
                    ),
                    onSelected: (value) {},
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    labelStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 12),
                  ),
                )).toList(), // Added .toList() to convert Iterable to List
              ),
            )
          ],
        ),
      ),
    );
  }
}
