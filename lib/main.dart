import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/auth/auth_viewmodel.dart';
import 'package:food_delivery_app/screens/auth/login_view.dart';
import 'package:food_delivery_app/screens/auth/singup_view.dart';
import 'package:food_delivery_app/screens/cart/cart_view.dart';
import 'package:food_delivery_app/screens/core_view.dart';
import 'package:food_delivery_app/screens/home/home_viewmodel.dart';
import 'package:food_delivery_app/screens/payment.dart/payment_view.dart';
import 'package:food_delivery_app/screens/settings/settings_view.dart';
import 'package:food_delivery_app/services/restauran_service.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      providers:[
        ChangeNotifierProvider(create: (context) => AuthViewModel()),
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
        ChangeNotifierProvider(create: (context) => Restaurant()),

       ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CoreView(),
        theme: Provider.of<ThemeProvider>(context).themeData,
        routes: <String, WidgetBuilder>{
          "/signup": (context) => const SingUpView(),
          "/login":(context) => const LoginView(),
          "/settings":(context) => const SettingsView(),
          "/cart":(context) => CartView(),
          "/payment":(context) => PaymentView(),
        },
      ),
    );
  }
}