import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key, required this.title, required this.child});

  final Widget title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      expandedHeight: 320,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () => Navigator.of(context).pushNamed('/cart'),
          icon: const Icon(Icons.shopping_cart)
          )
      ],
      title: const Text("Sunset Diner"),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
        background: Padding( 
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
      ),
    );
  }
}