import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/colors_list_cubit/colors_list_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_lite_view.dart';
import 'package:notes_app/views/widgets/custom_add_note_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            controller: titleController,
            onSaved: (value) {
              title = value;
            },
            label: "Title",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            controller: subTitleController,
            onSaved: (value) {
              subTitle = value;
            },
            label: "Content",
            maxlines: 5,
          ),
          const SizedBox(
            height: 24,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 24,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              DateTime now = DateTime.now();

              var formattedCurrentDate = DateFormat("yyyy-MM-dd").format(now);
              return CustomNoteButton(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedCurrentDate,
                      color: BlocProvider.of<ColorsListCubit>(context)
                          .selectedColor
                          .value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 18,
          )
        ],
      ),
    );
  }
}
