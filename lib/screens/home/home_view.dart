import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/sliver_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
           MySliverAppBar(
            title: "title", 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(indent: 25, endIndent: 25, color: Theme.of(context).colorScheme.secondary,)
              ],
            )
            )
        ],
        body: Container(color: Colors.green,),
      ),
    );
  }
}