// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  Color iconColor;
  Color borderColor;
  IconData icon;
  CustomIcon({
    Key? key,
    required this.iconColor,
    required this.borderColor,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 5),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: 1)),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
