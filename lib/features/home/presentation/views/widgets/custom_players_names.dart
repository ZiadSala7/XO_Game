import 'package:flutter/material.dart';
import 'package:xo_game/constants.dart';
import 'package:xo_game/features/home/presentation/views/widgets/custom_player_widget.dart';
import 'package:xo_game/main.dart';

class CustomPlayersNames extends StatelessWidget {
  const CustomPlayersNames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomPlayerWidget(
          name: player1.text,
          playerNum: 'Player1 : ',
          color: player1Color,
        ),
        CustomPlayerWidget(
          name: player2.text,
          playerNum: 'Player2 : ',
          color: player2Color,
        ),
      ],
    );
  }
}
