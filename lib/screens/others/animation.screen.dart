import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  static String routeName = '/animation';
  static String name = 'Animation';
  const AnimationScreen({super.key});
  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  bool _bigger = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
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
