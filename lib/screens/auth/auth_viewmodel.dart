import 'package:flutter/material.dart';
import 'package:food_delivery_app/services/auth_service.dart';

class AuthViewModel extends ChangeNotifier{
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  final confirmPasswordTextEditingController = TextEditingController();
  final _auth = AuthService();

  void signUp(){
    if (emailTextEditingController.text.isNotEmpty && passwordTextEditingController.text == confirmPasswordTextEditingController.text){
      _auth.signUp(emailTextEditingController.text, passwordTextEditingController.text);
      emailTextEditingController.clear();
      passwordTextEditingController.clear();
      confirmPasswordTextEditingController.clear();
    }else{
      print("Make your email and password");
    }
  }

  void logIn(){
    if (emailTextEditingController.text.isNotEmpty && passwordTextEditingController.text.isNotEmpty){
      _auth.signIn(emailTextEditingController.text, passwordTextEditingController.text);
      emailTextEditingController.clear();
      passwordTextEditingController.clear();
    }
    else{
      print("Type your email and password");
    }
  }

}