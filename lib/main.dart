import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_portfolio_WebSite/body/about.dart';
import 'package:new_portfolio_WebSite/body/contact_page.dart';
import 'package:new_portfolio_WebSite/body/skills_page.dart';
import 'package:new_portfolio_WebSite/body/top_page.dart';
import 'package:new_portfolio_WebSite/body/works.dart';
import 'package:new_portfolio_WebSite/header/appbar_title.dart';
import 'package:new_portfolio_WebSite/routes.dart';
import 'package:new_portfolio_WebSite/share/back_button.dart';
import 'package:new_portfolio_WebSite/works/works_detail_list.dart';
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
    return MaterialApp(
      routes: routes,
      initialRoute: '/',
      theme: ThemeData(fontFamily: 'Schyler'),
      home: const Scaffold(
        body: TopPage(),
      ),
    );
  }
}
