import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:xo_game/core/widgets/awesome_dialog_model.dart';
import 'package:xo_game/features/home/data/data.dart';

xOrOWin(BuildContext context) {
  if ((cells[0] == cells[1] && cells[1] == cells[2] && cells[2] == 'X') ||
      (cells[3] == cells[4] && cells[4] == cells[5] && cells[5] == 'X') ||
      (cells[6] == cells[7] && cells[7] == cells[8] && cells[8] == 'X') ||
      (cells[0] == cells[3] && cells[3] == cells[6] && cells[6] == 'X') ||
      (cells[1] == cells[4] && cells[4] == cells[7] && cells[7] == 'X') ||
      (cells[2] == cells[5] && cells[5] == cells[8] && cells[8] == 'X') ||
      (cells[0] == cells[4] && cells[4] == cells[8] && cells[8] == 'X') ||
      (cells[2] == cells[4] && cells[4] == cells[6] && cells[6] == 'X')) {
    awesomeDialogModel(context, "Player X won The game!", 'Winner',
            DialogType.success, "X")
        .show();
    cnt = 0;
    gameOver = true;
  } else if ((cells[0] == cells[1] &&
          cells[1] == cells[2] &&
          cells[2] == 'O') ||
      (cells[3] == cells[4] && cells[4] == cells[5] && cells[5] == 'O') ||
      (cells[6] == cells[7] && cells[7] == cells[8] && cells[8] == 'O') ||
      (cells[0] == cells[3] && cells[3] == cells[6] && cells[6] == 'O') ||
      (cells[1] == cells[4] && cells[4] == cells[7] && cells[7] == 'O') ||
      (cells[2] == cells[5] && cells[5] == cells[8] && cells[8] == 'O') ||
      (cells[0] == cells[4] && cells[4] == cells[8] && cells[8] == 'O') ||
      (cells[2] == cells[4] && cells[4] == cells[6] && cells[6] == 'O')) {
    awesomeDialogModel(context, "Player O won The game!", "winner",
            DialogType.success, "O")
        .show();
    cnt = 0;
    gameOver = true;
  } else if (cnt == 9) {
    awesomeDialogModel(
            context, "Players Drawer", "Drawer", DialogType.warning, "Draw")
        .show();
    cnt = 0;
    gameOver = true;
  }
}
