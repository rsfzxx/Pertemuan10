import 'package:flutter/material.dart';
import 'package:from_login/Login_screen.dart';
import 'package:from_login/home_screen.dart';
import 'package:from_login/signup_sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Form Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routes: (context) => const HomeScreen(),
        FormScreen.routes: (context) => const FormScreen(),
        Signup.routes: (context) => const Signup(),
      },
    );
  }
}
