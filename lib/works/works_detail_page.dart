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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WorksDetailTextWidget(
                title: '作品URL',
                hostName: 'kailog.live',
            )],
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
          children: [
            Text(
              title,
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
