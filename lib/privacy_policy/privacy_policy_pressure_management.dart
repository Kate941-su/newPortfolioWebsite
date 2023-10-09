import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PrivacyPolicyPressureManagement extends StatelessWidget {
  const PrivacyPolicyPressureManagement({super.key});

  @override
  Widget build(BuildContext context) {
      return Material(
        child: Html(
          data: privacyPolicyData,
          extensions: [
            TagExtension(
              tagsToExtend: {"flutter"},
              child: const FlutterLogo(),
            ),
          ],
          style: {
            "p.fancy": Style(
              textAlign: TextAlign.center,
              padding: HtmlPaddings.all(16.0),
              backgroundColor: Colors.grey,
              margin: Margins(left: Margin(50, Unit.px), right: Margin.auto()),
              width: Width(300, Unit.px),
              fontWeight: FontWeight.bold,
            ),
          },
        ),
      );
  }
}

const privacyPolicyData = """
    <h1>プライバシーポリシー</h1>  
    <h2>1. アプリの概要</h2> 
    <p>
        シンプル血圧管理（以下「本アプリ」といいます）は、個人情報やアプリ内課金を取得する機能を含んでおりません。
    </p>

    <h2>2. 収集する情報</h2> 
    <p>
        本アプリは、使用状況やクラッシュのトラッキング、および改善のための匿名の統計情報を収集する場合があります。
    </p>

    <h2>3. ユーザー情報の利用</h2>
    <p>
        本アプリでは、ユーザー情報の取得および利用は行いません。
    </p>

    <h2>4. 第三者への情報の提供</h2>
    <p>
        本アプリは、ユーザー情報を第三者と共有することはありません。
    </p>

    <h2>5. 広告</h2>
    <p>
        本アプリは、広告を掲載していないため、広告ネットワークとの情報の共有は行いません。
    </p>

    <h2>6. セキュリティ</h2>
    <p>
        本アプリは、ユーザー情報の保護のために適切なセキュリティ対策を講じます。
    </p>

    <h2>7. お問い合わせ先</h2>
    <p>
        プライバシーポリシーに関するお問い合わせは、以下にご連絡ください：
        [連絡先情報]
        北谷海斗 (Kaito Kitaya)
    </p>

    <h2>8. プライバシーポリシーの変更</h2>
    本ポリシーは、必要に応じて変更される場合があります。重要な変更がある場合は、お知らせいたします。
    このプライバシーポリシーは、<b>2023/9/24</b> に最終更新されました。
""";
