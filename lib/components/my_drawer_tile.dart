import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  MyDrawerTile({super.key, required this.text, required this.icon, required this.onTap});

  final String text;
  final IconData? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: ListTile(
        title: Text(text, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
        leading: Icon(icon, color: Theme.of(context).colorScheme.inversePrimary),
        onTap: onTap,
      ),
      );
  }
}