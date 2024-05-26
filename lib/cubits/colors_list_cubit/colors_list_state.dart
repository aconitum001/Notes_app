part of 'colors_list_cubit.dart';

@immutable
sealed class ColorsListState {}

final class ColorsListInitial extends ColorsListState {}

final class ColorsListChanged extends ColorsListState {}
