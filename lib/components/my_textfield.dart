import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   MyTextField({super.key, required this.controler, required this.obscureText, required this.hintText});

  TextEditingController controler;
  bool obscureText;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: obscureText,
        controller: controler,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: Theme.of(context).colorScheme.tertiary),
            ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.inversePrimary)
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary, )
        ),
      ),
    );
  }
}