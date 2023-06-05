import 'package:flutter/material.dart';

class SnackbarScreen extends StatefulWidget {
  static String routeName = '/snackbar';
  static String name = 'Snackbar';
  const SnackbarScreen({super.key});
  @override
  State<SnackbarScreen> createState() => _SnackbarScreenState();
}

class _SnackbarScreenState extends State<SnackbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            const snackBar = SnackBar(
                showCloseIcon: true, content: Text('Ouch! You hit me!'));
            // Find the ScaffoldMessenger in the widget tree
            // and use it to show a SnackBar.
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Hit me!'),
        ),
      ),
    );
  }
}
