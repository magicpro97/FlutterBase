import 'package:go_router/go_router.dart';

import '../feature2_screen.dart';

final class Feature2Route {
  Feature2Route._();

  static const path = "/feature2";
  static const name = "feature2";

  static final route = StatefulShellBranch(
    routes: [
      GoRoute(
        path: path,
        name: name,
        pageBuilder: (_, state) => const NoTransitionPage(
          child: Feature2Screen(),
        ),
      ),
    ],
  );
}
