import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
