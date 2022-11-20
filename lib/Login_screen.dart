import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  static const String routes = 'FormScreen';
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
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
              padding: const EdgeInsets.all(10),
              child: Text('Hallo Again!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            Text('Walcome back your'),
            Text('been missed'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: fullname,
                decoration: InputDecoration(
                    hintText: 'Please enter your name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: fullname,
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
                setState(() {
                  yourname = fullname.text;
                });
              },
              child: const Text('Submit'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 600,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Your name is $yourname",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Your password is $yourname",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
