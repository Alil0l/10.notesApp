import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_textfield.dart';
import 'package:notes/widgets/custome_app_bar.dart';
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
                builder: (context) {
                  return Container(
                    child: Column(
                      children: [
                        SizedBox(height: 36),
                        CustomeFormTextField(hidden: false, hintText: 'Title:'),
                        SizedBox(height: 24),
                        CustomeFormTextField(
                            hidden: false,
                            hintText: 'Describtion:',
                            linesCount: 5),
                        SizedBox(height: 24),
                        CustomButton(buttonLabel: 'Add Note')
                      ],
                    ),
                  );
                });
          },
          child: Icon(Icons.note_add_rounded),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 12),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: const CustomeAppBar()),
              const Expanded(child: NoteList()),
            ],
          ),
        ));
  }
}
