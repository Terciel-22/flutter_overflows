import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerScreen extends StatefulWidget {
  static String routeName = '/drawer';
  static String name = 'Drawer';
  const DrawerScreen({super.key});
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () => context.go('/'),
          child: const Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.chevron_left),
            Text('Back'),
          ]),
        ),
      ),
    );
  }
}
