import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  bool _obscurePassword= true;

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if(!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 2));

    if(!mounted) return;
    setState(() => _isLoading = false);

    if(_emailController.text.trim() == 'fadhil@gmail.com' && _passwordController.text == '123456') {
      Navigator.pushReplacementNamed(context, '/profile');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email atau Password tidak sesuai'),
          backgroundColor: Colors.red, 
          ),
      );
    }
  }
  @override
  Widget build(BuildContext context){
    return const Placeholder(
      
    );
  }
}
