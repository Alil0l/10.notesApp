// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomeFormTextField extends StatelessWidget {
  CustomeFormTextField(
      {super.key,
      this.hintText,
      this.linesCount,
      this.action,
      this.onChanged,
      required this.hidden});
  String? hintText;
  int? linesCount;
  dynamic action;
  bool hidden;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Requierd Field';
          }
          return null;
        },
        obscureText: hidden,
        maxLines: linesCount,
        onChanged: onChanged,
        textInputAction: action,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontFamily: 'pacifico',
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(8)))),
      ),
    );
  }
}
