import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'colors_list_state.dart';

class ColorsListCubit extends Cubit<ColorsListState> {
  ColorsListCubit() : super(ColorsListInitial());

  int selectedIndex = -1;
  void isActive({required int index}) {
    if (selectedIndex == index) {
      selectedIndex = -1;
    } else {
      selectedIndex = index;
    }
    emit(ColorsListChanged());
  }
}
