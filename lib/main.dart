import 'package:flutter/material.dart';
import 'package:flutter_overflows/routes.dart';
import 'package:go_router/go_router.dart';

GoRouter _router = GoRouter(
  routes: [...routeList],
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.red),
    );
  }
}
