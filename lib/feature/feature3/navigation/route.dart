import 'package:go_router/go_router.dart';

import '../feature3_screen.dart';

final class Feature3Route {
  Feature3Route._();

  static const path = "/feature3";
  static const name = "feature3";

  static final route = StatefulShellBranch(
    routes: [
      GoRoute(
        path: path,
        name: name,
        pageBuilder: (_, state) => const NoTransitionPage(
          child: Feature3Screen(),
        ),
      ),
    ],
  );
}
