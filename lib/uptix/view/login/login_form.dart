import 'package:flutter/material.dart';

enum LoginType { SignIn, Register }

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    this.username,
    this.password,
  }) : super(key: key);

  final String? username;
  final String? password;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: const Text('Sign In')),
              TextButton(onPressed: () {}, child: const Text('Register')),
            ],
          ),
          const TextField(
            decoration: InputDecoration(hintText: "Enter your Email"),
            keyboardType: TextInputType.emailAddress,
          ),
          const TextField(
            decoration: InputDecoration(hintText: "Enter your password"),
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("¿ Problem Signing in?"),
          ),
        ],
      ),
    );
  }
}
