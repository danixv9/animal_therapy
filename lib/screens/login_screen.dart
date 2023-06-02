import 'package:flutter/material.dart';  
import 'firebase_service.dart';  

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, key});
}

class _LoginScreenState extends State<LoginScreen> { 
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _login() async {
     ...
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Form( ... ),
    );
  }
}

