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
          child: Center(
            child: Container(
                color: Colors.white,
                width: 300,
                height: 300,
                child: Table(
                  children: [
                    TableRow(children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: 200,
                        color: Colors.yellow,
                      ),
                    ])
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
