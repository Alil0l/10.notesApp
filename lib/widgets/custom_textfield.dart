// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  CustomeTextField(
      {super.key,
      this.hrpadding = 0,
      this.hintText,
      this.linesCount = 1,
      this.action,
      this.onChanged,
      required this.hidden,
      this.onSaved});
  String? hintText;
  int? linesCount;
  dynamic action;
  bool hidden;
  double hrpadding;
  final void Function(String?)? onSaved;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hrpadding),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is Requierd';
          } else {
            return null;
          }
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
