import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xo_game/core/utils/app_router.dart';

AwesomeDialog awesomeDialogModel(BuildContext context) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    animType: AnimType.topSlide,
    title: 'Winner',
    desc: "Player X won The game!",
    btnOkOnPress: () {
      GoRouter.of(context).pushReplacement(AppRouter.homeView);
    },
  );
}
