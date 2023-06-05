import 'package:flutter/material.dart';

class FontsScreen extends StatefulWidget {
  static String routeName = '/fonts';
  static String name = 'Fonts';
  const FontsScreen({super.key});
  @override
  State<FontsScreen> createState() => _FontsScreenState();
}

class _FontsScreenState extends State<FontsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fonts"),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(children: [
          Text(
            'Default',
            style: TextStyle(fontSize: 40),
          ),
          Text(
            'Poppins',
            style: TextStyle(fontFamily: 'Poppins', fontSize: 40),
          ),
          Text(
            'Bebbas Neue',
            style: TextStyle(fontFamily: 'Bebbas Neue', fontSize: 40),
          ),
        ]),
      ),
    );
  }
}
