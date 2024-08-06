import 'package:flutter/material.dart';
import 'package:xo_game/core/utils/styles.dart';

class XOWidget extends StatelessWidget {
  final String xOrO;
  final Color color;
  const XOWidget({
    super.key,
    required this.xOrO,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        xOrO,
        style: Styles.textStyle120Bold.copyWith(
          color: color,
        ),
      ),
    );
  }
}
