import 'package:flutter/material.dart';
import 'package:xo_game/core/utils/styles.dart';
import 'package:xo_game/features/home/data/data.dart';

class PlayerName extends StatelessWidget {
  const PlayerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$player   ",
          style: Styles.textStyle30Bold.copyWith(
            color: player == 'X' ? Colors.red : Colors.green,
            fontSize: 60,
          ),
          textAlign: TextAlign.center,
        ),
        const Text(
          "Starts the Game",
          style: Styles.textStyle30Bold,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
