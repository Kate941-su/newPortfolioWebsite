import 'package:flutter/material.dart';
import 'package:new_portfolio_WebSite/works/works_detail_list.dart';
import 'package:new_portfolio_WebSite/works/works_detail_page.dart';

import 'body/about.dart';
import 'body/contact_page.dart';
import 'body/skills_page.dart';
import 'body/top_page.dart';
import 'body/works.dart';

final Map<String, WidgetBuilder> routes = {
  '/topPage': (BuildContext context) => TopPage(),
  '/about': (BuildContext context) => AboutPage(),
  '/works': (BuildContext context) => WorksPage(),
  '/skills': (BuildContext context) => SkillsPage(),
  '/contact': (BuildContext context) => ContactPage(),
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
    privacyPolicyHostName: 'pending',
    description: '',
    imageList: imagePressureManagementList,
  ),
  '/works_detail_kailog': (BuildContext context) => WorksDetailPage(
    title: 'Kaito Kitaya Portfolio',
    privacyPolicyHostName: '',
    productUrlHostName: 'kailog.live',
    description: '',
    imageList: imageKailogList,
  ),
};
