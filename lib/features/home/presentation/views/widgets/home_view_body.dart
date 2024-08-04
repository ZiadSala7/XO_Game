import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xo_game/features/home/presentation/views/widgets/custom_players_names.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomPlayersNames(),
        ),
      ],
    );
  }
}
