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
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldColor,
      ),
    );
  }
}
