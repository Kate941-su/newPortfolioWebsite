import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:new_portfolio_WebSite/body/about.dart';
import 'package:new_portfolio_WebSite/body/contact_page.dart';
import 'package:new_portfolio_WebSite/body/skills_page.dart';
import 'package:new_portfolio_WebSite/body/top_page.dart';
import 'package:new_portfolio_WebSite/body/works.dart';
import 'package:new_portfolio_WebSite/header/appbar_title.dart';

void main() {
  runApp(const ProviderScope(child: MyApp())); // ProviderScopeでアプリケーションをラップします
}

// CounterProviderを作成します
final counterProvider = StateProvider<int>((ref) {
  return 0; // 初期値は0とします
});

// メインのWidget
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Schyler'),
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/images/my_logo.png'),
          title: const AppbarTitle(),
        ),
        body: ListView(
          children: [
            TopPage(),
            AboutPage(),
            WorksPage(),
            SkillsPage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}
