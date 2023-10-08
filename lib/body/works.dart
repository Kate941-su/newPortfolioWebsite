import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_portfolio_WebSite/share/title_text.dart';
import 'package:new_portfolio_WebSite/works/works_detail_page.dart';

import '../gen/assets.gen.dart';

const double _worksHeight = 250;
const double _worksWidth = 250;
const int _crossAxisCount = 3;

class WorksPage extends ConsumerWidget {
  const WorksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dummyWorks = [
      WorksThumbnailComponent(
        height: _worksHeight,
          title: 'SAMPLE1',
          imageProvider:
              Assets.images.works.worksThumbnail.kaitosRoomThumb.provider()),
      WorksThumbnailComponent(
          height: _worksHeight,
          title: 'SAMPLE2',
          imageProvider:
          Assets.images.works.worksThumbnail.kyoshoThumb.provider()),
      WorksThumbnailComponent(
          height: _worksHeight,
          title: 'SAMPLE3',
          imageProvider:
          Assets.images.works.worksThumbnail.nakazeThumb.provider()),
      WorksThumbnailComponent(
          height: _worksHeight,
          title: 'SAMPLE4',
          imageProvider:
          Assets.images.works.worksThumbnail.portfolioThumb.provider()),
      WorksThumbnailComponent(
          height: _worksHeight,
          title: 'SAMPLE5',
          imageProvider:
          Assets.images.works.worksThumbnail.bloodPressureThumb.provider()),
      WorksThumbnailComponent(
          height: _worksHeight,
          title: 'SAMPLE6',
          imageProvider:
          Assets.images.works.worksThumbnail.kaitosRoomThumb.provider()),
    ];
    return Material(
      type: MaterialType.transparency,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TitleText(title: 'WORKS'),
            SizedBox(
              height: ((dummyWorks.length / _crossAxisCount) + 1) * _worksHeight,
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: dummyWorks),
            ),
          ],
        ),
      ),
    );
  }
}

class WorksThumbnailComponent extends StatelessWidget {
  const WorksThumbnailComponent(
      {required this.title,
      required this.imageProvider,
      required this.height,
      super.key});

  final double height;
  final String title;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration:
            BoxDecoration(image: DecorationImage(image: imageProvider)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/works_detail');
              },
            ),
          ),
        ),
        Text(title),
      ]
    );
  }
}
