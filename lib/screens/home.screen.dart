import 'package:flutter/material.dart';
import 'package:flutter_overflows/screens/overflows/columnrow.overflow.dart';
import 'package:flutter_overflows/screens/overflows/container.overflow.dart';
import 'package:flutter_overflows/screens/overflows/text.overflow.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = '/';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Overflow Scenarios"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextButton(
              child: Text(WTextOverflow.name),
              onPressed: () => context.pushNamed(WTextOverflow.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(WContainerOverflow.name),
              onPressed: () => context.pushNamed(WContainerOverflow.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(WColumRowOverflow.name),
              onPressed: () => context.pushNamed(WColumRowOverflow.routeName),
            ),
          ),
        ],
      ),
    );
  }
}
