import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_game/features/home/presentation/view%20models/name_cubit/name_cubit_state.dart';
import 'package:xo_game/main.dart';

class NameCubit extends Cubit<NameCubitState> {
  NameCubit() : super(Player1Name());

  playerName() {
    xoTurns ? emit(Player2Name()) : emit(Player1Name());
  }
}
