import 'package:flutter/material.dart';
import 'package:xo_game/constants.dart';
import 'package:xo_game/core/utils/styles.dart';

class CustomPlayerWidget extends StatelessWidget {
  final String name;
  final String playerNum;
  final Color color;
  const CustomPlayerWidget({
    super.key,
    required this.name,
    required this.playerNum,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Text(
            playerNum,
            style: Styles.textStyle18Bold,
          ),
          Text(
            name,
            style: Styles.textStyle20Bold.copyWith(
              color: scaffoldColor,
            ),
          ),
        ],
      ),
    );
  }
}
