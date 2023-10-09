import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:new_portfolio_WebSite/works/works_detail_list.dart';
import 'package:new_portfolio_WebSite/works/works_detail_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../gen/assets.gen.dart';



class WorksDetailPage extends HookConsumerWidget {
  const WorksDetailPage({
    required this.title,
    this.privacyPolicyHostName,
    this.productUrlHostName,
    required this.description,
    required this.imageList,
    super.key});

  final String title;
  final String? privacyPolicyHostName;
  final String? productUrlHostName;
  final String description;
  final List<SelectableWidget> imageList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      type: MaterialType.transparency,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 64),
                ),
              ),
              _ImageWindow(imageList: imageList),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  if(productUrlHostName != null)
                      _WorksDetailTextWidget(
                        title: '作品URL',
                        hostName: productUrlHostName,
                      ),
                    if (privacyPolicyHostName != null)
                      _WorksDetailTextWidget(
                        title: 'プライバシーポリシー',
                        hostName: privacyPolicyHostName,
                      ),
                    _WorksDetailTextWidget(
                      title: '概要',
                      description: description
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WorksDetailTextWidget extends ConsumerWidget {
  const _WorksDetailTextWidget({
    super.key,
    required this.title,
    this.description,
    this.hostName,
  });

  final String title;
  final String? hostName;
  final String? description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              title,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            hostName != null
                ? InkWell(
                    child: Text(
                      'https://${hostName!}',
                      style: const TextStyle(color: Colors.blue),
                    ),
                    onTap: () async {
                      if (!await launchUrl(Uri.http(hostName!))) {
                        throw Exception('Could not launch the URI ');
                      }
                    })
                : description != null
                    ? Text(description!)
                    : const Text(''),
          ],
        ));
  }
}

class _ImageWindow extends HookConsumerWidget {
  const _ImageWindow({
    required this.imageList,
    super.key
  });

  final List<SelectableWidget> imageList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(listIndexProvider);
    return Column(
      children: [
        Container(
            width: 600,
            height: 400,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: imageList[index].image,
              ),
            )),
        Container(
          width: 300,
          height: 150,
          padding: EdgeInsets.all(16.0),
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return imageList[index];
              }),
        )
      ],
    );
  }
}


