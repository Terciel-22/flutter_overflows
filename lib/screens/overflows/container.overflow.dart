import 'package:flutter/material.dart';

class WContainerOverflow extends StatefulWidget {
  static String routeName = '/container-overflow';
  static String name = 'Container Overflow';
  const WContainerOverflow({super.key});
  @override
  State<WContainerOverflow> createState() => _WContainerOverflow();
}

class _WContainerOverflow extends State<WContainerOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Overflow"),
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
