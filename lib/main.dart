import 'package:arthur_profile/go_router.dart';
import 'package:arthur_profile/theme.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
