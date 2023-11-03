import 'package:flutter/material.dart';
import 'package:notes/widgets/custome_icon_button.dart';

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
        const CustomIconButton(icon: Icons.search_rounded)
      ],
    );
  }
}
