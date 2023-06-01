import 'package:flutter_overflows/screens/home.screen.dart';
import 'package:flutter_overflows/screens/overflows/columnrow.overflow.dart';
import 'package:flutter_overflows/screens/overflows/container.overflow.dart';
import 'package:flutter_overflows/screens/overflows/containerconstraints.overflow.dart';
import 'package:flutter_overflows/screens/overflows/image.overflow.dart';
import 'package:flutter_overflows/screens/overflows/stack.overflow.dart';
import 'package:flutter_overflows/screens/overflows/table.overflow.dart';
import 'package:flutter_overflows/screens/overflows/text.overflow.dart';
import 'package:flutter_overflows/screens/overflows/textfield.overflow.dart';
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
  GoRoute(
    path: WStackOverflow.routeName,
    name: WStackOverflow.routeName,
    builder: (context, state) => const WStackOverflow(),
  ),
  GoRoute(
    path: WContainerConstraintsOverflow.routeName,
    name: WContainerConstraintsOverflow.routeName,
    builder: (context, state) => const WContainerConstraintsOverflow(),
  ),
  GoRoute(
    path: WImageOverflow.routeName,
    name: WImageOverflow.routeName,
    builder: (context, state) => const WImageOverflow(),
  ),
  GoRoute(
    path: WTableOverflow.routeName,
    name: WTableOverflow.routeName,
    builder: (context, state) => const WTableOverflow(),
  ),
  GoRoute(
    path: WTextFieldOverflow.routeName,
    name: WTextFieldOverflow.routeName,
    builder: (context, state) => const WTextFieldOverflow(),
  ),
];
