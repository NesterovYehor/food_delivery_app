import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
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
              Icon(Icons.lock_open_rounded, size: 100, color: Theme.of(context).colorScheme.inversePrimary,),

              Text("Food delivery App", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 16)),

              const SizedBox(height: 25,),
        
              MyTextField(controler: vm.emailTextEditingController, obscureText: false, hintText: 'Email'),

              const SizedBox(height: 10,),

              MyTextField(controler: vm.passwordTextEditingController, obscureText: true, hintText: 'Password',),

              const SizedBox(height: 25,),

              MyButton(onTap: vm.logIn, text: "LogIn"),

              const SizedBox(height: 25,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?", 
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)
                    ),

                  const SizedBox(width: 5,),

                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/signup'),
                    child: Text("Register now", 
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary, 
                      fontWeight: FontWeight.bold
                      )
                    ),
                  )
                ],
              )

            ],
          ),
        );
      },
    );
  }
}