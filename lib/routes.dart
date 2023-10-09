import 'package:flutter/material.dart';
import 'package:new_portfolio_WebSite/main.dart';
import 'package:new_portfolio_WebSite/privacy_policy/privacy_policy_pressure_management.dart';
import 'package:new_portfolio_WebSite/works/works_detail_list.dart';
import 'package:new_portfolio_WebSite/works/works_detail_page.dart';

import 'body/about.dart';
import 'body/contact_page.dart';
import 'body/skills_page.dart';
import 'body/top_page.dart';
import 'body/works.dart';

final Map<String, WidgetBuilder> routes = {
  '/topPage': (BuildContext context) => const TopPage(),
  '/about': (BuildContext context) => const AboutPage(),
  '/works': (BuildContext context) => const WorksPage(),
  '/skills': (BuildContext context) => const SkillsPage(),
  '/contact': (BuildContext context) => const ContactPage(),

  // works_detail
  '/works_detail_kyosho': (BuildContext context) => WorksDetailPage(
        title: '巨匠',
        privacyPolicyHostName: 'kailog.live',
        productUrlHostName: 'kailog.live',
        description: '',
        imageList: imageKyoshoList,
      ),
  '/works_detail_nakaze': (BuildContext context) => WorksDetailPage(
        title: '浜松ナカゼ歯科医様',
        productUrlHostName: 'hamamatsu-nakaze-dental.com',
        description: '',
        imageList: imageNakazeList,
      ),
  '/works_detail_blood_pressure': (BuildContext context) => WorksDetailPage(
        title: 'シンプル血圧管理',
        privacyPolicyHostName: 'click here',
        description: '',
        imageList: imagePressureManagementList,
      ),
  '/works_detail_kailog': (BuildContext context) => WorksDetailPage(
        title: 'Kaito Kitaya Portfolio',
        productUrlHostName: 'kailog.live',
        description: '',
        imageList: imageKailogList,
      ),

  // privacy policy
  'privacy_policy_pressure_management': (BuildContext context) =>
      const PrivacyPolicyPressureManagement(),
};
