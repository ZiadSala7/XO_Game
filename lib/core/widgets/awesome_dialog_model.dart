import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xo_game/core/utils/app_router.dart';
import 'package:xo_game/core/utils/styles.dart';
import 'package:xo_game/features/home/data/data.dart';

AwesomeDialog awesomeDialogModel(
  BuildContext context,
  String desc,
  String title,
  DialogType dType,
  String isO,
) {
  return AwesomeDialog(
    context: context,
    dialogType: dType,
    animType: AnimType.topSlide,
    title: title,
    titleTextStyle: Styles.textStyle25Bold.copyWith(
      fontFamily: "fontFamily",
      color: Colors.black,
    ),
    desc: title == "Drawer" ? null : desc,
    descTextStyle: Styles.textStyle25Bold.copyWith(
      fontFamily: "fontFamily",
      color: isO == 'O'
          ? Colors.green
          : isO == "X"
              ? Colors.red
              : Colors.black,
    ),
    btnOkOnPress: () {
      cnt = 0;
      gameOver = false;
      cells = ["", "", "", "", "", "", "", "", ""];
      GoRouter.of(context).pushReplacement(AppRouter.homeView);
    },
  );
}
