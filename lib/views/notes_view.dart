import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: Colors.lightBlue[300],
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
