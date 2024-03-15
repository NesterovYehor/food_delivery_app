import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   MyTextField({super.key, required this.controler, required this.obscureText});

  TextEditingController controler;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controler,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: Theme.of(context).colorScheme.tertiary),
          ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.inversePrimary)
        )
      ),
    );
  }
}