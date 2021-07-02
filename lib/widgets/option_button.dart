import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final IconData icon;
  final String name;
  final Function onPressed;
  final Color colors;
  final double iconSize;

  const OptionButton(
      {Key? key,
      required this.icon,
      required this.name,
      required this.onPressed,
      required this.colors,
      required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed(),
        icon: Icon(
          icon,
          color: colors,
          size: iconSize,
        ),
        label: Text(
          name,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ));
  }
}
