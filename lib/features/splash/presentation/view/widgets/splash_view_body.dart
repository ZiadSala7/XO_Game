import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xo_game/core/utils/app_animations.dart';
import 'package:xo_game/core/utils/app_images.dart';
import 'package:xo_game/core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 6), () {
      GoRouter.of(context).pushReplacement(AppRouter.loginView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomFadeInDown(
          duration: 1,
          child: Image.asset(
            AppImages.splash,
            height: 200,
            width: 100,
          ),
        ),
      ],
    );
  }
}
