import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xo_game/core/utils/app_images.dart';
import 'package:xo_game/core/utils/app_router.dart';
import 'package:xo_game/core/utils/styles.dart';
import 'package:xo_game/features/login/presentation/view/widgets/custom_button.dart';
import 'package:xo_game/features/login/presentation/view/widgets/custom_text_field.dart';
import 'package:xo_game/main.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Image.asset(
            AppImages.splash,
            height: 120,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Enter Players Names",
            textAlign: TextAlign.center,
            style: Styles.textStyle25Medium,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            txt: "Enter player1 name : ",
            player: player1,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            txt: "Enter player2 name : ",
            player: player2,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            txt: 'Start Game',
            color: Colors.amber,
            onPressed: () {
              if (player1.text.isNotEmpty && player2.text.isNotEmpty) {
                GoRouter.of(context).push(AppRouter.homeView);
              }
            },
          ),
        ],
      ),
    );
  }
}
