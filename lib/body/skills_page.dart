import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../share/title_text.dart';

const int _crossAxisCount = 3;
const double _skillsHeight = 100;
const double _skillsWidth = 300;

final _dummySkills = [
  SizedBox(
    width: _skillsWidth,
    height: _skillsHeight,
    child: ListTile(
      leading: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.orange,
        ),
      ),
      title: Text('dummy!dummy!dummy!dummy!dummy!'),
    ),
  ),
  SizedBox(
    width: _skillsWidth,
    height: _skillsHeight,
    child: ListTile(
      leading: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.orange,
        ),
      ),
      title: Text('dummy!dummy!dummy!dummy!dummy!'),
    ),
  ),
  SizedBox(
    width: _skillsWidth,
    height: _skillsHeight,
    child: ListTile(
      leading: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.orange,
        ),
      ),
      title: Text('dummy!dummy!dummy!dummy!dummy!'),
    ),
  ),
  SizedBox(
    width: _skillsWidth,
    height: _skillsHeight,
    child: ListTile(
      leading: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.orange,
        ),
      ),
      title: Text('dummy!dummy!dummy!dummy!dummy!'),
    ),
  ),
  SizedBox(
    width: _skillsWidth,
    height: _skillsHeight,
    child: ListTile(
      leading: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.orange,
        ),
      ),
      title: Text('dummy!dummy!dummy!dummy!dummy!'),
    ),
  ),
  SizedBox(
    width: _skillsWidth,
    height: _skillsHeight,
    child: ListTile(
      leading: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.orange,
        ),
      ),
      title: Text('dummy!dummy!dummy!dummy!dummy!'),
    ),
  ),
];

class SkillsPage extends ConsumerWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TitleText(title: 'SKILLS'),
        SizedBox(
          height: ((_dummySkills.length / _crossAxisCount) + 1) * _skillsHeight,
          child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(2),
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              crossAxisCount: _crossAxisCount,
              childAspectRatio: _skillsWidth/_skillsHeight,
              children: _dummySkills),
        ),
      ],
    );
  }
}
