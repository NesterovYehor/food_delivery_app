import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Dark Mode",
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.bold),
                ),
              ),
              CupertinoSwitch(
                trackColor: Theme.of(context).colorScheme.secondary,
                value: Provider.of<ThemeProvider>(context, listen: false).isDarkTheme,
                onChanged: (value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
