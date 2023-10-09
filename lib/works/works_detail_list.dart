import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_portfolio_WebSite/works/works_detail_provider.dart';

import '../gen/assets.gen.dart';

final imageKyoshoList = [
  SelectableWidget(
      image: Assets.images.works.worksDetail.kyosho1.provider(), index: 0),
  SelectableWidget(
      image: Assets.images.works.worksDetail.kyosho2.provider(), index: 1),
  SelectableWidget(
      image: Assets.images.works.worksDetail.kyosho3.provider(), index: 2),
  SelectableWidget(
      image: Assets.images.works.worksDetail.kyosho4.provider(), index: 3),
];

final imageNakazeList = [
  SelectableWidget(
      image: Assets.images.works.worksDetail.nakaze1.provider(), index: 0),
  SelectableWidget(
      image: Assets.images.works.worksDetail.nakaze5.provider(), index: 1),
  SelectableWidget(
      image: Assets.images.works.worksDetail.nakaze3.provider(), index: 2),
  SelectableWidget(
      image: Assets.images.works.worksDetail.nakaze4.provider(), index: 3),
];

final imagePressureManagementList = [
  SelectableWidget(
      image: Assets.images.works.worksDetail.bloodPressure1.provider(), index: 0),
  SelectableWidget(
      image: Assets.images.works.worksDetail.bloodPressure2.provider(), index: 1),
  SelectableWidget(
      image: Assets.images.works.worksDetail.bloodPressure3.provider(), index: 2),
  SelectableWidget(
      image: Assets.images.works.worksDetail.bloodPressure4.provider(), index: 3),
];

final imageKailogList = [
  SelectableWidget(
      image: Assets.images.works.worksDetail.kailog1.provider(), index: 0),
  SelectableWidget(
      image: Assets.images.works.worksDetail.kailog2.provider(), index: 1),
  SelectableWidget(
      image: Assets.images.works.worksDetail.kailog3.provider(), index: 2),
  SelectableWidget(
      image: Assets.images.works.worksDetail.kailog4.provider(), index: 3),
];

class SelectableWidget extends ConsumerWidget {
  const SelectableWidget({
    super.key,
    required this.image,
    required this.index,
  });

  final ImageProvider image;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listIndex = ref.watch(listIndexProvider);
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: listIndex == index
                  ? null
                  : ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: image,
            ),
          )),
      onTap: () {
        ref.read(listIndexProvider.notifier).state = index;
      },
    );
  }
}