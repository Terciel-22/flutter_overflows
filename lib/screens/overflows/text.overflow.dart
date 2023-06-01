import 'package:flutter/material.dart';

class WTextOverflow extends StatefulWidget {
  static String routeName = '/text-overflow';
  static String name = 'Text Overflow';
  const WTextOverflow({super.key});
  @override
  State<WTextOverflow> createState() => _WTextOverflowState();
}

class _WTextOverflowState extends State<WTextOverflow> {
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
          child: Center(
            child: Container(
              color: Colors.white,
              width: 200,
              height: 40,
              child: const Row(
                children: [
                  Text(
                    "This is a long text that will cause a pixel overflow error if it exceeds the available space",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
