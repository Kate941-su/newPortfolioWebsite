import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../share/title_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TitleText(title: 'ABOUT'),
        ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
          title: Text('samplesamplesamplesamplesamplesample'),
        ),
        ListTile(
          leading: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          title: Text('samplesamplesamplesamplesamplesample'),
        ),
        ListTile(
          leading: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          title: Text('samplesamplesamplesamplesamplesample'),
        ),
        ListTile(
          leading: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          title: Text('samplesamplesamplesamplesamplesample'),
        ),
      ],
    );
  }
}
