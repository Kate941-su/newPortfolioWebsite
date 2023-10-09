import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../share/title_text.dart';

class ContactPage extends ConsumerWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        children: [
          TitleText(title: 'CONTACT'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('email : kworkshere@gmail.com'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('X(Twitter) : @KaitoKitaya0830'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'LinkedIn : https://www.linkedin.com/in/kaito-kitaya-0aa12a263/'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
