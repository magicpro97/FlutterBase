import 'package:go_router/go_router.dart';

import '../splash_screen.dart';

final class SplashRoute {
  SplashRoute._();

  static const _path = "/";
  static const name = "splash";

  static final route = GoRoute(
    path: _path,
    name: name,
    builder: (_, __) => const SplashScreen(),
  );
}
