import 'package:flutter/material.dart';

class WColumRowOverflow extends StatefulWidget {
  static String routeName = '/columnrow-overflow';
  static String name = 'Column/Row Overflow';
  const WColumRowOverflow({super.key});
  @override
  State<WColumRowOverflow> createState() => _WColumRowOverflow();
}

class _WColumRowOverflow extends State<WColumRowOverflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column/Row Overflow"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Theme.of(context).highlightColor,
          child: Center(
            child: Container(
              color: Colors.white,
              width: 200,
              height: 500,
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 200,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 200,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 200,
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
