import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xo_game/core/utils/app_router.dart';
import 'package:xo_game/core/utils/styles.dart';
import 'package:xo_game/features/home/presentation/views/widgets/custom_xo_board.dart';
import 'package:xo_game/features/login/presentation/view/widgets/custom_button.dart';

List<String> cells = ["", "", "", "", "", "", "", "", ""];
String player = 'X';
bool xoTurns = false;

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
          height: 90,
        ),
        const CustomXOBoard(),
        CustomButton(
          txt: "Reset",
          color: Colors.amber,
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.homeView);
            xoTurns = false;
            cells = ["", "", "", "", "", "", "", "", ""];
          },
        ),
      ],
    );
  }
}

class PlayerName extends StatelessWidget {
  const PlayerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "It's $player turn",
      style: Styles.textStyle50Bold,
      textAlign: TextAlign.center,
    );
  }
}
