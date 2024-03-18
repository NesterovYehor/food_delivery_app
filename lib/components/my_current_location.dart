import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key, required this.onTap, required this.location});

  final Function()? onTap;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now", style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Text(location, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.bold)),
                  
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}