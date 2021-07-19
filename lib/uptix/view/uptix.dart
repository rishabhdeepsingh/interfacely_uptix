import 'package:flutter/material.dart';
import 'package:interfacely/uptix/view/login/login.dart';

class Uptix extends StatelessWidget {
  const Uptix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uptix"),),
      body: Center(child: LoginPage()),
    );
  }
}
