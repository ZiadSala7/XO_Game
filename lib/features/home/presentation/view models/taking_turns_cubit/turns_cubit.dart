import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_game/features/home/presentation/view%20models/taking_turns_cubit/turns_cubit_state.dart';

class TurnsCubit extends Cubit<TurnsCubitState> {
  TurnsCubit() : super(OTurn());

  xTurnState() {
    emit(XTurn());
  }

  oTurnState() {
    emit(OTurn());
  }
}
