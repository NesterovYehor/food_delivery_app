import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
import 'package:food_delivery_app/screens/auth/auth_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, vm, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock_open_rounded),
        
              MyTextField(controler: vm.emailTextEditingController, obscureText: false,),

              MyTextField(controler: vm.passwordTextEditingController, obscureText: true,),
            ],
          ),
        );
      },
    );
  }
}