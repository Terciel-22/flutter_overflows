import 'package:flutter/material.dart';

class WTextFieldOverflow extends StatefulWidget {
  static String routeName = '/textfield-overflow';
  static String name = 'TextField Overflow';
  const WTextFieldOverflow({super.key});
  @override
  State<WTextFieldOverflow> createState() => _WTextFieldOverflowState();
}

class _WTextFieldOverflowState extends State<WTextFieldOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Overflow"),
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
