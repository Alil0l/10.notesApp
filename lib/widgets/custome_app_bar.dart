import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28)),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color.fromARGB(255, 83, 83, 83),
            ),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)))
      ],
    );
  }
}
