import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

part 'colors_list_state.dart';

class ColorsListCubit extends Cubit<ColorsListState> {
  ColorsListCubit() : super(ColorsListInitial());

  int selectedIndex = 0;
  Color selectedColor = const Color(0xff4059ad);
  void isActive({required int index}) {
    selectedIndex = index;
    selectedColor = colorsList[index];
    emit(ColorsListChanged());
  }
}
