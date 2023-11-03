import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: Colors.amber),
      height: 200,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            textColor: kMainColor,
            iconColor: kMainColor,
            title: Text(
              'Flutter Note',
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w800),
            ),
            subtitle: Text('This Is What this note about',
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w100)),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, size: 32),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              'Date',
              style: TextStyle(color: kMainColor),
            ),
          )
        ],
      ),
    );
  }
}
