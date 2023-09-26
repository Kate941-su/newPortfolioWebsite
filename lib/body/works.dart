import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_portfolio_WebSite/share/title_text.dart';

const double _worksHeight = 250;
const double _worksWidth = 250;
const int _crossAxisCount = 3;

final _dummyWorks = [
  Container(
    width: _worksWidth,
    height: _worksHeight,
    padding: const EdgeInsets.all(8),
    color: Colors.teal[100],
    child: const Text("He'd have you all unravel at the"),
  ),
  Container(
    width: _worksWidth,
    height: _worksHeight,
    padding: const EdgeInsets.all(8),
    color: Colors.teal[200],
    child: const Text('Heed not the rabble'),
  ),
  Container(
    width: _worksWidth,
    height: _worksHeight,
    padding: const EdgeInsets.all(8),
    color: Colors.teal[100],
    child: const Text("He'd have you all unravel at the"),
  ),
  Container(
    width: _worksWidth,
    height: _worksHeight,
    padding: const EdgeInsets.all(8),
    color: Colors.teal[200],
    child: const Text('Heed not the rabble'),
  ),
  Container(
    width: _worksWidth,
    height: _worksHeight,
    padding: const EdgeInsets.all(8),
    color: Colors.teal[100],
    child: const Text("He'd have you all unravel at the"),
  ),
  Container(
    width: _worksWidth,
    height: _worksHeight,
    padding: const EdgeInsets.all(8),
    color: Colors.teal[200],
    child: const Text('Heed not the rabble'),
  ),
];

class WorksPage extends ConsumerWidget {
  const WorksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleText(title: 'WORKS'),
        SizedBox(
          height: ((_dummyWorks.length / _crossAxisCount) + 1) * _worksHeight,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: _dummyWorks
          ),
        ),
      ],
    );
  }
}
