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
) {
  return AwesomeDialog(
    context: context,
    dialogType: dType,
    animType: AnimType.topSlide,
    title: title,
    desc: desc,
    descTextStyle: Styles.textStyle20Bold.copyWith(color: Colors.black),
    btnOkOnPress: () {
      cnt = 0;
      cells = ["", "", "", "", "", "", "", "", ""];
      GoRouter.of(context).pushReplacement(AppRouter.homeView);
    },
  );
}
