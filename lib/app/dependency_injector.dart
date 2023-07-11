import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injector.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies({
  String environment = Environment.dev,
}) =>
    $initGetIt(
      GetIt.instance,
      environment: environment,
    );
