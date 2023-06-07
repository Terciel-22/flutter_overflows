import 'package:flutter/material.dart';
import 'package:flutter_overflows/global.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
                border: outlineInputBorder,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: outlineInputBorder,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: outlineInputBorder,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
