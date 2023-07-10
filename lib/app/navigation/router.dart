import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feature/feature1/navigation/route.dart';
import '../../feature/feature2/navigation/route.dart';
import '../../feature/feature3/navigation/route.dart';
import '../../feature/splash/navigation/route.dart';
import '../main_screen.dart';

final class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'root',
  );

  static final _shellNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell',
  );

  static final _mainRoute = ShellRoute(
    navigatorKey: _shellNavigatorKey,
    routes: [
      Feature1Route.route(_rootNavigatorKey),
      Feature2Route.route,
      Feature3Route.route,
    ],
    builder: (_, state, widget) => MainScreen(
      location: state.location,
      child: widget,
    ),
  );

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      SplashRoute.route,
      _mainRoute,
    ],
  );
}
