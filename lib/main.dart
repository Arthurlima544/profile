import 'package:arthur_profile/go_router.dart';
import 'package:arthur_profile/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = AppTheme();
    return MaterialApp.router(
      theme: theme.toThemeData(),
      debugShowCheckedModeBanner: false,
      routerConfig: routes,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
        Locale('pt', 'BR'),
      ],
    );
  }
}
