import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_textfield.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          SizedBox(height: 36),
          CustomeTextField(
              hidden: false, hintText: 'Title:', linesCount: 1, hrpadding: 24),
          SizedBox(height: 16),
          CustomeTextField(
              hidden: false,
              hintText: 'Content:',
              linesCount: 5,
              hrpadding: 24),
          SizedBox(height: 24),
          CustomButton(buttonLabel: 'Add Note'),
          SizedBox(height: 36)
        ],
      ),
    ]);
  }
}
