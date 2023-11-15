import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_textfield.dart';
import 'package:notes/widgets/custome_app_bar.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
      child: Column(
        children: [
          CustomeAppBar(
            title: 'Edit Note',
            icon: Icons.done_rounded,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          CustomeTextField(
              onChanged: (value) {
                title = value;
              },
              hidden: false,
              linesCount: 1,
              hintText: widget.note.title,
              action: TextInputAction.next),
          const SizedBox(height: 16),
          CustomeTextField(
              onChanged: (value) {
                content = value;
              },
              hidden: false,
              linesCount: 5,
              hintText: widget.note.subtitle,
              action: TextInputAction.done)
        ],
      ),
    ));
  }
}
