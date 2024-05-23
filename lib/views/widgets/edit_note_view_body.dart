import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

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
          SizedBox(
            height: 40,
          ),
          CustomTextField(label: "Titlte"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            label: "Content",
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
