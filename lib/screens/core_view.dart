import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/auth/login_view.dart';
import 'package:food_delivery_app/screens/home/home_view.dart';

class CoreView extends StatefulWidget {
  CoreView({Key? key}) : super(key: key);

  @override
  State<CoreView> createState() => _CoreViewState();
}

class _CoreViewState extends State<CoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); 
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}'); 
          } else {
            if (snapshot.hasData && snapshot.data != null) {
              return const HomeView(); 
            } else {
              return const LoginView(); 
            }
          }
        },
      ),
    );
  }
}