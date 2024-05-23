import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_add_note_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              label: "Title",
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              label: "Content",
              maxlines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomNoteButton(),
          ],
        ),
      ),
    );
  }
}
