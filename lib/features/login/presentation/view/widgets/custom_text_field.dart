import 'package:flutter/material.dart';

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
