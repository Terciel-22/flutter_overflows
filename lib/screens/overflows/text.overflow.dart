import 'package:flutter/material.dart';

class WTextOverflow extends StatefulWidget {
  static String routeName = '/text-overflow';
  static String name = 'Text Overflow';
  const WTextOverflow({super.key});
  @override
  State<WTextOverflow> createState() => _TextOverflowState();
}

class _TextOverflowState extends State<WTextOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Overflow"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Theme.of(context).highlightColor,
        ),
      ),
    );
  }
}
