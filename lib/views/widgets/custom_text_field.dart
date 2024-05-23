import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.maxlines = 1,
  });
  final String label;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        label: Text(
          label,
          style: const TextStyle(
            color: Color(0xff6BE5D3),
          ),
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color = Colors.white]) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
    borderSide: BorderSide(color: color),
  );
}
