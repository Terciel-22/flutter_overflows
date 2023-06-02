import 'package:flutter/material.dart';

class WContainerConstraintsOverflow extends StatefulWidget {
  static String routeName = '/containerconstraints-overflow';
  static String name = 'Container Constraints Overflow';
  const WContainerConstraintsOverflow({super.key});
  @override
  State<WContainerConstraintsOverflow> createState() =>
      _WContainerConstraintsOverflowState();
}

class _WContainerConstraintsOverflowState
    extends State<WContainerConstraintsOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Constraints Overflow"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Theme.of(context).highlightColor,
          child: Center(
            child: Container(
              color: Colors.white,
              width: 300,
              height: 100,
              child: Row(
                children: [
                  Container(width: 400, height: 20, color: Colors.blue),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
