import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../share/title_text.dart';

const int _crossAxisCount = 2;
const double _skillsHeight = 100;
const double _skillsWidth = 300;

final _dummySkills = [
  const SkillsWidget(
      imagePath: '../assets/images/skills/python.png',
      skillName: 'Python',
      startCount: 4),
  const SkillsWidget(
      imagePath: '../assets/images/skills/C++.png',
      skillName: 'C, C++',
      startCount: 4),
  const SkillsWidget(
      imagePath: '../assets/images/skills/flt.png',
      skillName: 'Flutter',
      startCount: 4),
  const SkillsWidget(
      imagePath: '../assets/images/skills/mark.png',
      skillName: 'HTML/CSS',
      startCount: 3),
  const SkillsWidget(
      imagePath: '../assets/images/skills/swift.png',
      skillName: 'Swift',
      startCount: 3),
  const SkillsWidget(
      imagePath: '../assets/images/skills/dj.jpg',
      skillName: 'Django',
      startCount: 3),
  const SkillsWidget(
      imagePath: '../assets/images/skills/php.png',
      skillName: 'php',
      startCount: 2),
  const SkillsWidget(
      imagePath: '../assets/images/skills/js.png',
      skillName: 'Javascript',
      startCount: 2),
];

class SkillsPage extends ConsumerWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      type: MaterialType.transparency,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TitleText(title: 'SKILLS'),
            SizedBox(
              height:
                  ((_dummySkills.length / _crossAxisCount) + 1) * _skillsHeight * 2,
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(2),
                  crossAxisCount: _crossAxisCount,
                  childAspectRatio: _skillsWidth / _skillsHeight,
                  children: _dummySkills),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsWidget extends StatelessWidget {
  const SkillsWidget(
      {super.key,
      required this.imagePath,
      required this.skillName,
      required this.startCount});

  final String imagePath;
  final String skillName;
  final int startCount;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(imagePath))),
      ),
      Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(skillName),
              Text('⭐️' * startCount),
            ],
          )),
    ]);
  }
}
