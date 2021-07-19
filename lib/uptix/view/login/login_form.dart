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
              loginTypeButton("Sign In"),
              loginTypeButton("Register"),
            ],
          ),
          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(hintText: "Enter your Email"),
            keyboardType: TextInputType.emailAddress,
          ),
          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(hintText: "Enter your password"),
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.yellow,
            ),
            onPressed: () {},
            child: const Text("Sign In"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("¿ Problem Signing in?"),
          ),
        ],
      ),
    );
  }

  Container loginTypeButton(String text) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.yellow, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextButton(
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}
