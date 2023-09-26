import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              'ABOUT',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: const Text(
              'WORKS',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: const Text(
              'SKILLS',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: const Text(
              'CONTACT',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
      ],
    );
  }
}
