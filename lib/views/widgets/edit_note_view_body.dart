import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
