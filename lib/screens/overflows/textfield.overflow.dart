import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

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
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: LayoutGrid(
              columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
              rowSizes: const [
                auto,
                auto,
                auto,
                auto,
                auto,
                auto,
              ],
              columnGap: 10,
              rowGap: 10,
              children: const [
                GridPlacement(
                  columnSpan: 4,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Name'), border: OutlineInputBorder()),
                  ),
                ),
                GridPlacement(
                  columnSpan: 4,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Email'), border: OutlineInputBorder()),
                  ),
                ),
                GridPlacement(
                  columnSpan: 4,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Password'), border: OutlineInputBorder()),
                  ),
                ),
                GridPlacement(
                  columnSpan: 4,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Address'), border: OutlineInputBorder()),
                  ),
                ),
                GridPlacement(
                  columnSpan: 4,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Occupation'),
                        border: OutlineInputBorder()),
                  ),
                ),
                GridPlacement(
                  columnSpan: 4,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Contact No.'),
                        border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
