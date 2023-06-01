import 'package:flutter_overflows/screens/home.screen.dart';
import 'package:flutter_overflows/screens/overflows/columnrow.overflow.dart';
import 'package:flutter_overflows/screens/overflows/container.overflow.dart';
import 'package:flutter_overflows/screens/overflows/text.overflow.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> routeList = [
  GoRoute(
    path: HomeScreen.routeName,
    name: HomeScreen.routeName,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: WTextOverflow.routeName,
    name: WTextOverflow.routeName,
    builder: (context, state) => const WTextOverflow(),
  ),
  GoRoute(
    path: WContainerOverflow.routeName,
    name: WContainerOverflow.routeName,
    builder: (context, state) => const WContainerOverflow(),
  ),
  GoRoute(
    path: WColumRowOverflow.routeName,
    name: WColumRowOverflow.routeName,
    builder: (context, state) => const WColumRowOverflow(),
  ),
];
