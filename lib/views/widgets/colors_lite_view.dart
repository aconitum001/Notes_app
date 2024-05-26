import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/colors_list_cubit/colors_list_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isSelected,
    required this.color,
  });

  final Color color;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: isSelected
          ? CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 36,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 38,
              backgroundColor: color,
            ),
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) =>
            BlocBuilder<ColorsListCubit, ColorsListState>(
          builder: (context, state) {
            int selectedIndex =
                BlocProvider.of<ColorsListCubit>(context).selectedIndex;
            return GestureDetector(
              onTap: () {
                BlocProvider.of<ColorsListCubit>(context)
                    .isActive(index: index);
              },
              child: BlocBuilder<ColorsListCubit, ColorsListState>(
                builder: (context, state) {
                  return ColorItem(
                    color: colorsList[index],
                    isSelected: selectedIndex == index,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
