import 'package:flutter/material.dart';
import 'package:xo_game/core/widgets/awesome_dialog_model.dart';
import 'package:xo_game/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:xo_game/features/home/presentation/views/widgets/xo_widget.dart';

class CustomXOBox extends StatefulWidget {
  final int index;
  const CustomXOBox({
    super.key,
    required this.index,
  });

  @override
  State<CustomXOBox> createState() => _CustomXOBoxState();
}

class _CustomXOBoxState extends State<CustomXOBox> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isClicked
          ? null
          : () {
              setState(() {
                isClicked = true;
                xoTurns = !xoTurns;
                player = xoTurns ? 'X' : 'O';
                cells[widget.index] = xoTurns ? 'O' : 'X';
                if (cells[0] == cells[1] &&
                    cells[1] == cells[2] &&
                    cells[2] == 'X') {
                  awesomeDialogModel(context).show();
                }
              });
            },
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: const Color.fromARGB(167, 14, 28, 57),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        width: 50,
        child: isClicked
            ? xoTurns
                ? const XOWidget(
                    xOrO: 'O',
                    color: Colors.green,
                  )
                : const XOWidget(
                    xOrO: 'X',
                    color: Colors.red,
                  )
            : null,
      ),
    );
  }
}
