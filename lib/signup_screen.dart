import 'package:flutter/material.dart';

import 'Home_screen.dart';
import 'Login_screen.dart';

class Signup extends StatefulWidget {
  static const String routes = 'Signup';
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  String yourname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Widget'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                Icons.person,
                size: 150,
                color: Colors.amber,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('Sign-Up',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            Text('Nama'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Please enter your name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            Text('Email'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Please enter your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            Text('Password'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Please enter your password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 240, 133, 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FormScreen();
                }));
              },
              child:
                  const Text('Create', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
