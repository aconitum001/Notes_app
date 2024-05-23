import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomNoteButton extends StatelessWidget {
  const CustomNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      height: 50,
      minWidth: MediaQuery.of(context).size.width,
      child: const Text(
        "Add",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
