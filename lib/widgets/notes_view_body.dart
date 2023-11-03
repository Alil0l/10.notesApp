import 'package:flutter/material.dart';
import 'package:notes/widgets/custome_app_bar.dart';

class NotesAppBody extends StatelessWidget {
  const NotesAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const CustomeAppBar(),
          Column(),
        ],
      ),
    ));
  }
}
