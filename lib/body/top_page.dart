import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // About
      Positioned(
          top: 0,
          left: 0,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/about');
            },
            child: const Text(
              'About',
              style: TextStyle(fontSize: 32),
            ),
          )),
      Positioned(
          top: 0,
          right: 0,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/works');
            },
            child: const Text(
              'Works',
              style: TextStyle(fontSize: 32),
            ),
          )),
      Positioned(
          left: 0,
          bottom: 0,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/skills');
            },
            child: const Text(
              'Skills',
              style: TextStyle(fontSize: 32),
            ),
          )),
      Positioned(
          right: 0,
          bottom: 0,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/contact');
            },
            child: const Text(
              'Contact',
              style: TextStyle(fontSize: 32),
            ),
          )),
      // Name, Portfolio, Latest Update
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              'Kaito Kitaya',
              style: TextStyle(fontSize: 64.0),
              minFontSize: 32,
              maxLines: 1,
            ),
            AutoSizeText(
              'Portfolio',
              style: TextStyle(fontSize: 32.0),
              minFontSize: 16,
              maxLines: 1,
            ),
            AutoSizeText(
              'Latest Update 2023/10/09',
              style: TextStyle(fontSize: 24.0),
              minFontSize: 12,
              maxLines: 1,
            ),
          ],
        ),
      ),
    ]);
  }
}
