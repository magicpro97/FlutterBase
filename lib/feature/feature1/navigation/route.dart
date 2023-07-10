import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../feature1_child_screen.dart';
import '../feature1_screen.dart';

final class Feature1Route {
  Feature1Route._();

  static const path = "/feature1";
  static const name = "feature1";

  static const _feature1childPath = "child";
  static const feature1childName = "feature1child";

  static GoRoute route(
    GlobalKey<NavigatorState> rootNavigatorKey,
  ) =>
      GoRoute(
        path: path,
        name: name,
        pageBuilder: (_, state) => const NoTransitionPage(
          child: Feature1Screen(),
        ),
        routes: [
          GoRoute(
            path: _feature1childPath,
            name: feature1childName,
            parentNavigatorKey: rootNavigatorKey,
            builder: (_, __) => const Feature1ChildScreen(),
          ),
        ],
      );
}
