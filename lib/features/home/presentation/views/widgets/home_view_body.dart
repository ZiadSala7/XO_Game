import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xo_game/core/utils/app_router.dart';
import 'package:xo_game/features/home/data/data.dart';
import 'package:xo_game/features/home/presentation/views/widgets/custom_xo_board.dart';
import 'package:xo_game/features/home/presentation/views/widgets/player_name.dart';
import 'package:xo_game/features/login/presentation/view/widgets/custom_button.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const PlayerName(),
        const SizedBox(
          height: 70,
        ),
        const CustomXOBoard(),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          txt: "Reset",
          color: Colors.amber,
          onPressed: () {
            xoTurns = false;
            cnt = 0;
            cells = ["", "", "", "", "", "", "", "", ""];
            player = 'O';
            GoRouter.of(context).pushReplacement(AppRouter.homeView);
          },
        ),
      ],
    );
  }
}
