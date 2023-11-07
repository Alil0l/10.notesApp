import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: Colors.amber),
      height: 220,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            textColor: kMainColor,
            iconColor: kMainColor,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Flutter Tip',
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w800),
              ),
            ),
            subtitle: Text('This Is What this note about',
                maxLines: 2,
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
            padding: const EdgeInsets.only(right: 24.0),
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
