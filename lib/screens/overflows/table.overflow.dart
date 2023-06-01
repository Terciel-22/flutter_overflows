import 'package:flutter/material.dart';

class WTableOverflow extends StatefulWidget {
  static String routeName = '/table-overflow';
  static String name = 'Table Overflow';
  const WTableOverflow({super.key});
  @override
  State<WTableOverflow> createState() => _WTableOverflowState();
}

class _WTableOverflowState extends State<WTableOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table Overflow"),
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
