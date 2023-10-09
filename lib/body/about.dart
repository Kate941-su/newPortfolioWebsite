import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../share/title_text.dart';

const pageWidth = 150.0;
const pageHeight = 150.0;

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aboutListTileList = [
      AboutListTile(
        imagePath: '../assets/images/about/born.jpg',
        description: '愛知県名古屋市出身。地元の小中高で過ごす。',
      ),
      AboutListTile(
        imagePath: '../assets/images/about/python.png',
        description:
            '名古屋工業大学に入学。大学三年生のとき研究ではじめてPythonを触る。\nここからプログラミングの面白さに気づき始める',
      ),
      AboutListTile(
        imagePath: '../assets/images/about/mol.jpg',
        description: '名古屋工業大学大学院進学。分子動力学シミュレーションの高速化のために Ｃ言語を習得する。',
      ),
      AboutListTile(
        imagePath: '../assets/images/about/smp.jpg',
        description: '大学院在学中にスマホアプリ開発のベンチャー企業でアプリ開発を一年間修業。\nみっちりC＋＋を経験。',
      ),
      AboutListTile(
        imagePath: '../assets/images/about/router.jpg',
        description: '大学院卒業後はメーカーに開発系ソフトウェアエンジニアとして勤務する。\nこの時初めて名古屋を離れて単身浜松へ。',
      ),
      AboutListTile(
        imagePath: '../assets/images/about/be.jpg',
        description:
            'Web・スマホアプリ開発エンジニアになりたい気持ちが捨てきれず退社\n名古屋へ帰還。フルリモートの会社でスマホアプリ・バックエンドエンジニアとして再出発。',
      ),
    ];
    return Material(
      child: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [const TitleText(title: 'ABOUT'), ...aboutListTileList],
          ),
        ),
        Positioned(
            right: 32,
            bottom: 32,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon:const Icon(
                  Icons.home,
                  size: 32,
                )))
      ]),
    );
  }
}

class AboutListTile extends StatelessWidget {
  const AboutListTile(
      {required this.imagePath, required this.description, super.key});

  final String imagePath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: pageWidth,
          height: pageHeight,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(imagePath))),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: AutoSizeText(
              description,
              minFontSize: 12,
              maxLines: 5,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ]),
    );
  }
}
