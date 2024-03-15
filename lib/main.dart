import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/auth/auth_viewmodel.dart';
import 'package:food_delivery_app/screens/auth/login_view.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ThemeProvider(),
    child: const MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthViewModel())],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginView(),
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}