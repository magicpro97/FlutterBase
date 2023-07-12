import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feature/feature1/navigation/route.dart';
import '../../feature/feature2/navigation/route.dart';
import '../../feature/feature3/navigation/route.dart';
import '../../feature/signin/navigation/route.dart';
import '../../feature/splash/navigation/route.dart';
import '../main_screen.dart';

final class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'root',
  );

  static final _mainRoute = StatefulShellRoute.indexedStack(
    branches: [
      Feature1Route.route(_rootNavigatorKey),
      Feature2Route.route,
      Feature3Route.route,
    ],
    builder: (_, state, navigationShell) => MainScreen(
      location: state.location,
      navigationShell: navigationShell,
    ),
  );

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      SplashRoute.route,
      SignInRoute.route,
      _mainRoute,
    ],
  );
}
