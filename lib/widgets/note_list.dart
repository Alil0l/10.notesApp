import 'package:flutter/material.dart';
import 'package:notes/widgets/note_card.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return NoteCard();
      },
    );
  }
}
