import 'package:flutter/material.dart';
import 'package:food_delivery_app/services/auth_service.dart';

class AuthViewModel extends ChangeNotifier{
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  final confirmPasswordTextEditingController = TextEditingController();
  final _auth = AuthService();

  Future<void> signUp() async{
    if (emailTextEditingController.text.isNotEmpty && passwordTextEditingController.text == confirmPasswordTextEditingController.text){
     await  _auth.signUp(emailTextEditingController.text, passwordTextEditingController.text);
      emailTextEditingController.clear();
      passwordTextEditingController.clear();
      confirmPasswordTextEditingController.clear();
    }else{
      print("Make your email and password");
    }
  }

  Future<void> logIn() async{
    if (emailTextEditingController.text.isNotEmpty && passwordTextEditingController.text.isNotEmpty){
      await _auth.signIn(emailTextEditingController.text, passwordTextEditingController.text);
      emailTextEditingController.clear();
      passwordTextEditingController.clear();
    }
    else{
      print("Type your email and password");
    }
  }

}