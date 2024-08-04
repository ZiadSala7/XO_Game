import 'package:flutter/material.dart';
import 'package:xo_game/constants.dart';
import 'package:xo_game/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          color: scaffoldColor,
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
