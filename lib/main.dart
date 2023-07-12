import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app/app.dart';
import 'app/dependency_injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies(environment: Environment.test);

  runApp(App());
}
