import 'package:flutter/material.dart';
import 'package:notes/widgets/custome_icon_button.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28)),
            CustomIconButton(icon: icon)
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
