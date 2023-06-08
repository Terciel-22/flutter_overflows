import 'package:flutter/material.dart';

class TextFieldsScreen extends StatefulWidget {
  const TextFieldsScreen({super.key});
  static String routeName = '/textfields';
  static String name = 'Text Fields';

  @override
  createState() => TextFieldsScreenState();
}

class TextFieldsScreenState extends State<TextFieldsScreen> {
  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Fields'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
