import 'package:flutter/material.dart';

class WStackOverflow extends StatefulWidget {
  static String routeName = '/stack-overflow';
  static String name = 'Stack Overflow';
  const WStackOverflow({super.key});
  @override
  State<WStackOverflow> createState() => _WStackOverflowState();
}

class _WStackOverflowState extends State<WStackOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Overflow"),
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
