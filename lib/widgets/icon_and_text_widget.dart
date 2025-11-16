import 'package:flutter/material.dart';
import 'package:food_app/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.iconColor,
  });
  final String text;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 20),
        SizedBox(width: 5),
        SmallText(text: text),
      ],
    );
  }
}
