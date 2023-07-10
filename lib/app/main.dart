import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'dependency_injector.dart';

void main() async {
  await configureDependencies(environment: Environment.prod);

  runApp(App());
}
