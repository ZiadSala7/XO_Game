import 'package:flutter/material.dart';
import 'package:xo_game/core/utils/app_images.dart';
import 'package:xo_game/core/utils/styles.dart';
import 'package:xo_game/main.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppImages.splash,
          height: 150,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Enter Players Names",
          textAlign: TextAlign.center,
          style: Styles.textStyle25Medium,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          txt: "Enter player1 name : ",
          player: player1,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          txt: "Enter player2 name : ",
          player: player2,
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomButton(
          txt: 'Start Game',
          color: Colors.amber,
        ),
      ],
    );
  }
}

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

class CustomTextField extends StatelessWidget {
  final String txt;
  final TextEditingController player;
  const CustomTextField({
    super.key,
    required this.txt,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        controller: player,
        decoration: InputDecoration(
          hintText: txt,
          fillColor: Colors.grey,
          filled: true,
          focusedBorder: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
