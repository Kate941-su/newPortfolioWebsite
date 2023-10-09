import 'package:flutter/material.dart';

class BackPushNamedButton extends StatelessWidget {
  const BackPushNamedButton(
      {required this.pushFor, required this.icon, super.key});

  final String pushFor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(pushFor);
        },
        icon: icon);
  }
}
