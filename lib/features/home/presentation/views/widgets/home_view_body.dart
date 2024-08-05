import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_game/core/utils/styles.dart';
import 'package:xo_game/features/home/presentation/view%20models/name_cubit/name_cubit.dart';
import 'package:xo_game/main.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NameCubit()..playerName(),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 120,
          ),
          CustomXOBoard(),
        ],
      ),
    );
  }
}

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
            return const CustomXOBox();
          },
        ),
      ),
    );
  }
}

class CustomXOBox extends StatefulWidget {
  const CustomXOBox({
    super.key,
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
