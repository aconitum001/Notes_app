import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/colors_list_cubit/colors_list_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_lite_view.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = widget.note.title;
    subTitleController.text = widget.note.subTitle;
    BlocProvider.of<ColorsListCubit>(context).selectedIndex =
        colorsList.indexOf(Color(widget.note.color));
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              if (titleController.text.isNotEmpty &&
                  subTitleController.text.isNotEmpty) {
                widget.note.title = titleController.text;
                widget.note.subTitle = subTitleController.text;
                widget.note.color = BlocProvider.of<ColorsListCubit>(context)
                    .selectedColor
                    .value;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              }
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            controller: titleController,
            onChanged: (value) {
              titleController.text = value;
            },
            label: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            controller: subTitleController,
            onChanged: (value) {
              subTitleController.text = value;
            },
            label: "Content",
            maxlines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          const ColorsListView(),
        ],
      ),
    );
  }
}
