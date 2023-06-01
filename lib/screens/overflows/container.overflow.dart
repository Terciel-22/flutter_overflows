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
          child: Center(
            child: Container(
              color: Colors.white,
              width: 200,
              height: 100,
              child: Row(
                children: [
                  Container(width: 250, height: 20, color: Colors.blue),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
