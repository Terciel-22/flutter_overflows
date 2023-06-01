import 'package:flutter/material.dart';

class WImageOverflow extends StatefulWidget {
  static String routeName = '/image-overflow';
  static String name = 'Image Overflow';
  const WImageOverflow({super.key});
  @override
  State<WImageOverflow> createState() => _WImageOverflowState();
}

class _WImageOverflowState extends State<WImageOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Overflow"),
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
