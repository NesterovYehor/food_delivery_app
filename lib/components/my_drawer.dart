import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(child: Icon(Icons.lock_open_rounded, size: 80, color: Theme.of(context).colorScheme.inversePrimary)),
              
              MyDrawerTile(
                text: "H O M E", 
                icon: Icons.home, 
                onTap: () => Navigator.pop(context)
                ),
              
              
              MyDrawerTile(
                text: "S E T T I N G S", 
                icon: Icons.settings, 
                onTap: () { 
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/settings");
                }
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyDrawerTile(
              text: "L O G O U T", 
              icon: Icons.logout, 
              onTap: () { 
                Navigator.pop(context);
                
              }
            ),
          ),
        ],
      ),
    );
  }
}