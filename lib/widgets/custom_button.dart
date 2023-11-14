// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.buttonLabel,
      this.onTap,
      this.isLoading = false});
  final String buttonLabel;
  final bool isLoading;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            height: 36,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: isLoading
                    ? SizedBox(
                        height: 18,
                        width: 18,
                        child: const CircularProgressIndicator(
                            color: Colors.white),
                      )
                    : Text(buttonLabel,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)))));
  }
}
