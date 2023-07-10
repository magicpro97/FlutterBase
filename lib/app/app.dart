import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/l10n.dart';
import 'navigation/router.dart';

class App extends StatelessWidget {
  App({super.key});

  final router = AppRouter.router;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationProvider: router.routeInformationProvider,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          onGenerateTitle: (_) => S.current.app_name,
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale?.languageCode &&
                  supportedLocale.countryCode == locale?.countryCode) {
                return supportedLocale;
              }
            }
            return const Locale('vi');
          },
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
        );
      },
    );
  }
}
