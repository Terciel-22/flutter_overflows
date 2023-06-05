import 'package:flutter/material.dart';

class SkeletonScreen extends StatefulWidget {
  static String routeName = '/skeleton';
  static String name = 'Skeleton';
  const SkeletonScreen({super.key});
  @override
  State<SkeletonScreen> createState() => _SkeletonScreenState();
}

class _SkeletonScreenState extends State<SkeletonScreen> {
  bool _bigger = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skeleton"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer( //update
          duration: const Duration(seconds: 1), //add
          width: _bigger ? 200 : 100,
          height: _bigger ? 200 : 100,
          color: Theme.of(context).primaryColor,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bigger = !_bigger;
          });
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
