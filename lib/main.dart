import 'package:flutter/material.dart';
import 'package:xo_game/constants.dart';
import 'package:xo_game/core/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldColor,
        textTheme: TextTheme(
          bodySmall: textStyleMethod(),
          bodyLarge: textStyleMethod(),
          bodyMedium: textStyleMethod(),
        ),
      ),
    );
  }

  TextStyle textStyleMethod() {
    return const TextStyle(
      color: Colors.white,
    );
  }
}
