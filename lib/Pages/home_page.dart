import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search_rounded)],
        title: Text('Hello Notes'),
        centerTitle: true,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.note_add_rounded),
      ),
    );
  }
}
