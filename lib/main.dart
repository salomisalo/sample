import 'package:flutter/material.dart';
import 'package:flutter_login/loginscreen.dart';


void main() {
  runApp(const InitialScreen());
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login(),
    );
  }
}
