import 'package:flutter_overflows/screens/home.screen.dart';
import 'package:flutter_overflows/screens/others/animation.screen.dart';
import 'package:flutter_overflows/screens/others/dio.screen.dart';
import 'package:flutter_overflows/screens/others/drawer.screen.dart';
import 'package:flutter_overflows/screens/others/font.screen.dart';
import 'package:flutter_overflows/screens/others/skeleton.screen.dart';
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
  GoRoute(
    path: PeriodicTableApp.routeName,
    name: PeriodicTableApp.routeName,
    builder: (context, state) => const PeriodicTableApp(),
  ),
  GoRoute(
    path: DrawerScreen.routeName,
    name: DrawerScreen.routeName,
    builder: (context, state) => const DrawerScreen(),
  ),
  GoRoute(
    path: SnackbarScreen.routeName,
    name: SnackbarScreen.routeName,
    builder: (context, state) => const SnackbarScreen(),
  ),
  GoRoute(
    path: FontsScreen.routeName,
    name: FontsScreen.routeName,
    builder: (context, state) => const FontsScreen(),
  ),
  GoRoute(
    path: AnimationScreen.routeName,
    name: AnimationScreen.routeName,
    builder: (context, state) => const AnimationScreen(),
  ),
  GoRoute(
    path: SkeletonScreen.routeName,
    name: SkeletonScreen.routeName,
    builder: (context, state) => const SkeletonScreen(),
  ),
  GoRoute(
    path: DioScreen.routeName,
    name: DioScreen.routeName,
    builder: (context, state) => const DioScreen(),
  ),
];
