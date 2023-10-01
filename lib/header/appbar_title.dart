import 'package:flutter/material.dart';

import '../main.dart';

enum PageIndex {
  top,
  about,
  works,
  skills,
  contact,
}

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({required this.pageController, super.key});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              pageController.animateToPage(PageIndex.about.index,
                  duration: Duration(seconds: 2),
                  curve: Curves.fastLinearToSlowEaseIn);
            },
            child: const Text(
              'ABOUT',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        TextButton(
            onPressed: () {
              pageController.animateToPage(PageIndex.works.index,
                  duration: Duration(seconds: 2),
                  curve: Curves.fastLinearToSlowEaseIn);
            },
            child: const Text(
              'WORKS',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        TextButton(
            onPressed: () {
              pageController.animateToPage(PageIndex.skills.index,
                  duration: Duration(seconds: 2),
                  curve: Curves.fastLinearToSlowEaseIn);
            },
            child: const Text(
              'SKILLS',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
        TextButton(
            onPressed: () {
              pageController.animateToPage(PageIndex.contact.index,
                  duration: Duration(seconds: 2),
                  curve: Curves.fastLinearToSlowEaseIn);
            },
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
