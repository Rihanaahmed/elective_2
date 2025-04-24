import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final String storedEmail = 'rihanaahmedyasin@gmail.com';
  final String storedPassword = '654321';

  void _validateLogin() {
    String email = _emailController.text.trim();
    String password = _passwordController.text;

    if (email == storedEmail && password == storedPassword) {
      _showMessage('Login successful!');
    } else {
      _showMessage('Invalid email or password.');
    }
  }

  void _showMessage(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _emailController,
          decoration: InputDecoration(labelText: 'Email'),
        ),
        SizedBox(height: 16),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(labelText: 'Password'),
        ),
        SizedBox(height: 24),
        ElevatedButton(
          onPressed: _validateLogin,
          child: Text('Login'),
        ),
      ],
    );
  }
}
