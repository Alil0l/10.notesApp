import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 36),
          CustomeTextField(
            hidden: false,
            hintText: 'Title:',
            linesCount: 1,
            hrpadding: 24,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomeTextField(
              hidden: false,
              onSaved: (value) {
                subtitle = value;
              },
              hintText: 'Content:',
              linesCount: 5,
              hrpadding: 24),
          const SizedBox(height: 24),
          CustomButton(
            buttonLabel: 'Add Note',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 36)
        ],
      ),
    );
  }
}
