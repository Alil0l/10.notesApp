import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_textfield.dart';
import 'package:notes/widgets/custome_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
      child: Column(
        children: [
          CustomeAppBar(title: 'Edit Note', icon: Icons.done_rounded),
          CustomeTextField(
              hidden: false,
              linesCount: 1,
              hintText: 'Edit Title',
              action: TextInputAction.next),
          SizedBox(height: 16),
          CustomeTextField(
              hidden: false,
              linesCount: 5,
              hintText: 'Edit Content',
              action: TextInputAction.done)
        ],
      ),
    ));
  }
}
