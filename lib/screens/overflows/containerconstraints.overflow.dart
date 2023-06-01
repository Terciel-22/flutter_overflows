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
        ),
      ),
    );
  }
}
