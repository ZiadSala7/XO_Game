import 'package:flutter/material.dart';
import 'package:xo_game/core/utils/app_animations.dart';
import 'package:xo_game/features/login/presentation/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomFadeInDown(
        duration: 1,
        child: LoginViewBody(),
      ),
    );
  }
}
