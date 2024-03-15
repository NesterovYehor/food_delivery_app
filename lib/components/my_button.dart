import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 MyButton({super.key, required this.onTap, required this.text});

  Function()? onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Center(child: Text(text, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 16, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}