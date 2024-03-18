import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyQuantitySelector extends StatelessWidget {
  MyQuantitySelector({super.key, required this.onDecrement, required this.quantity, required this.onIncrement});

  Function()? onDecrement;
  Function()? onIncrement;
  int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onDecrement,
            child: Icon(Icons.remove, size: 20, color: Theme.of(context).colorScheme.primary,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: Text(quantity.toString()),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Icon(Icons.add, size: 20, color: Theme.of(context).colorScheme.primary),
          )

        ],
      ),
    );
  }
}