import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_view_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
