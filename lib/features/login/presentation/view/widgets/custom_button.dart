import 'package:flutter/material.dart';
import 'package:xo_game/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final Color color;
  const CustomButton({
    super.key,
    required this.txt,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          txt,
          style: Styles.textStyle16Normal.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
