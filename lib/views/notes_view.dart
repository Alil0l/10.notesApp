import 'package:flutter/material.dart';
import 'package:notes/widgets/custome_app_bar.dart';
import 'package:notes/widgets/cusutom_bottomsheet.dart';
import 'package:notes/widgets/note_list.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                builder: (context) {
                  return Container(height: 400, child: AddNoteBottomSheet());
                });
          },
          child: Icon(Icons.note_add_rounded),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
          child: Column(
            children: [
              CustomeAppBar(
                title: 'Notes',
                icon: Icons.search_rounded,
              ),
              const Expanded(child: NoteList()),
            ],
          ),
        ));
  }
}
