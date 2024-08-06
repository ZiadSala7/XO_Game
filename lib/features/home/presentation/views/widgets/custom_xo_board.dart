import 'package:flutter/material.dart';
import 'package:xo_game/features/home/presentation/views/widgets/custom_xo_box.dart';

class CustomXOBoard extends StatelessWidget {
  const CustomXOBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff525D79),
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3 / 4,
          ),
          itemCount: 9,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CustomXOBox(
              index: index,
            );
          },
        ),
      ),
    );
  }
}
