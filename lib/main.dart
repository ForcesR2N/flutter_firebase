import 'package:flutter/material.dart';
import 'package:flutter_firebase/auth/login_or_register.dart';
import 'package:flutter_firebase/pages/register_page.dart';
import 'package:flutter_firebase/theme/dark_mode.dart';
import 'package:flutter_firebase/theme/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}