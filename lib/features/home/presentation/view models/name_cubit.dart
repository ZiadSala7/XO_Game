import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'name_state.dart';

class NameCubit extends Cubit<NameState> {
  NameCubit() : super(NameInitial());

  xorOTurn(bool xoTurn) {
    emit(xoTurn ? XTurn() : OTurn());
  }
}
