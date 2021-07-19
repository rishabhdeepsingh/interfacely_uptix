import 'package:flutter/material.dart';
import 'package:interfacely/uptix/view/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: const LoginForm(),
      ),
    );
  }
}
