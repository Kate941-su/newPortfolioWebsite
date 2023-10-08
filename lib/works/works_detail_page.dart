import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksDetailPage extends HookConsumerWidget {
  const WorksDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      type: MaterialType.transparency,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WorksDetailTextWidget(
                title: '作品URL',
                hostName: 'kailog.live',
              ),
              WorksDetailTextWidget(
                title: 'プライバシーポリシー',
                hostName: 'kailog.live',
              ),
              WorksDetailTextWidget(
                title: '概要',
                description:
                    '今後ジャンジャン追加していくポートフォリオアプリ。デザインは拝借させていただきました。バックエンドは自作しました。',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WorksDetailTextWidget extends StatelessWidget {
  const WorksDetailTextWidget({
    super.key,
    required this.title,
    this.description,
    this.hostName,
  });

  final String title;
  final String? hostName;
  final String? description;

  @override
  Widget build(BuildContext context) {
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
                      title,
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
