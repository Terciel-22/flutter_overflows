import 'package:flutter/material.dart';
import 'package:flutter_overflows/screens/others/drawer.screen.dart';
import 'package:flutter_overflows/screens/others/font.screen.dart';
import 'package:flutter_overflows/screens/others/snackbar.screen.dart';
import 'package:flutter_overflows/screens/overflows/columnrow.overflow.dart';
import 'package:flutter_overflows/screens/overflows/container.overflow.dart';
import 'package:flutter_overflows/screens/overflows/containerconstraints.overflow.dart';
import 'package:flutter_overflows/screens/overflows/image.overflow.dart';
import 'package:flutter_overflows/screens/overflows/stack.overflow.dart';
import 'package:flutter_overflows/screens/overflows/table.overflow.dart';
import 'package:flutter_overflows/screens/overflows/text.overflow.dart';
import 'package:flutter_overflows/screens/overflows/textfield.overflow.dart';
import 'package:flutter_overflows/screens/others/periodictable.screen.dart';
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
          ListTile(
            title: TextButton(
              child: Text(WStackOverflow.name),
              onPressed: () => context.pushNamed(WStackOverflow.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(WContainerConstraintsOverflow.name),
              onPressed: () =>
                  context.pushNamed(WContainerConstraintsOverflow.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(WImageOverflow.name),
              onPressed: () => context.pushNamed(WImageOverflow.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(WTableOverflow.name),
              onPressed: () => context.pushNamed(WTableOverflow.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(WTextFieldOverflow.name),
              onPressed: () => context.pushNamed(WTextFieldOverflow.routeName),
            ),
          ),
          const ListTile(
            title: Text(
              "Other Screens",
              style: TextStyle(fontSize: 30),
            ),
          ),
          ListTile(
            title: TextButton(
              child: const Text(PeriodicTableApp.name),
              onPressed: () => context.pushNamed(PeriodicTableApp.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(DrawerScreen.name),
              onPressed: () => context.pushNamed(DrawerScreen.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(
                SnackbarScreen.name,
              ),
              onPressed: () => context.pushNamed(SnackbarScreen.routeName),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text(
                FontsScreen.name,
              ),
              onPressed: () => context.pushNamed(FontsScreen.routeName),
            ),
          ),
        ],
      ),
    );
  }
}
