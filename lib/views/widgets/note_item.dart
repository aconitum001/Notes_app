import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 18, bottom: 18, left: 24, right: 5),
        decoration: const BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Flutter Tips",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Build your Career with tharwat Samyaze",
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "May 21,2022",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.2),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
