import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_portfolio_WebSite/body/about.dart';
import 'package:new_portfolio_WebSite/body/contact_page.dart';
import 'package:new_portfolio_WebSite/body/skills_page.dart';
import 'package:new_portfolio_WebSite/body/top_page.dart';
import 'package:new_portfolio_WebSite/body/works.dart';
import 'package:new_portfolio_WebSite/header/appbar_title.dart';
import 'package:new_portfolio_WebSite/works/works_detail_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp())); // ProviderScopeでアプリケーションをラップします
}

// メインのWidget
class MyApp extends HookConsumerWidget {
  MyApp({super.key});

  var pageList = [
    TopPage(),
    AboutPage(),
    WorksPage(),
    SkillsPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/works_detail': (BuildContext context) => WorksDetailPage()
      },
      initialRoute: '/',
      theme: ThemeData(fontFamily: 'Schyler'),
      home: Scaffold(
        appBar: AppBar(
          leading: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                pageController.animateToPage(PageIndex.top.index,
                    duration: Duration(seconds: 2),
                    curve: Curves.fastLinearToSlowEaseIn);
              },
              child: Image.asset('assets/images/my_logo.png'),
            ),
          ),
          title: AppbarTitle(
            pageController: pageController,
          ),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: pageController,
          children: List.generate(pageList.length, (index) {
            return pageList[index];
          }),
        ),
      ),
    );
  }
}
