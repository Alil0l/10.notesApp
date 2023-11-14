import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/widgets/custome_app_bar.dart';
import 'package:notes/widgets/cusutom_bottomsheet.dart';
import 'package:notes/widgets/note_list.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});
  static String id = 'HomePage';

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                builder: (context) {
                  return Container(child: AddNoteBottomSheet());
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
              Expanded(child: NoteList()),
            ],
          ),
        ));
  }
}
