import 'package:flutter/material.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Login Form')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: LoginForm(),
      ),
    );
  }
}
