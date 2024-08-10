import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xo_game/core/utils/app_images.dart';
import 'package:xo_game/core/utils/app_router.dart';
import 'package:xo_game/features/login/presentation/view/widgets/custom_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppImages.splash,
          height: 120,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          txt: 'Start Game',
          color: Colors.amberAccent,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.homeView);
          },
        ),
      ],
    );
  }
}
