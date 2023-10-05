/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesAboutGen get about => const $AssetsImagesAboutGen();

  /// File path: assets/images/my_logo.png
  AssetGenImage get myLogo => const AssetGenImage('assets/images/my_logo.png');

  $AssetsImagesSkillsGen get skills => const $AssetsImagesSkillsGen();

  /// List of all assets
  List<AssetGenImage> get values => [myLogo];
}

class $AssetsImagesAboutGen {
  const $AssetsImagesAboutGen();

  /// File path: assets/images/about/be.jpg
  AssetGenImage get be => const AssetGenImage('assets/images/about/be.jpg');

  /// File path: assets/images/about/born.jpg
  AssetGenImage get born => const AssetGenImage('assets/images/about/born.jpg');

  /// File path: assets/images/about/mol.jpg
  AssetGenImage get mol => const AssetGenImage('assets/images/about/mol.jpg');

  /// File path: assets/images/about/python.png
  AssetGenImage get python =>
      const AssetGenImage('assets/images/about/python.png');

  /// File path: assets/images/about/router.jpg
  AssetGenImage get router =>
      const AssetGenImage('assets/images/about/router.jpg');

  /// File path: assets/images/about/smp.jpg
  AssetGenImage get smp => const AssetGenImage('assets/images/about/smp.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [be, born, mol, python, router, smp];
}

class $AssetsImagesSkillsGen {
  const $AssetsImagesSkillsGen();

  /// File path: assets/images/skills/cpp.png
  AssetGenImage get cpp => const AssetGenImage('assets/images/skills/cpp.png');

  /// File path: assets/images/skills/dj.jpg
  AssetGenImage get dj => const AssetGenImage('assets/images/skills/dj.jpg');

  /// File path: assets/images/skills/flt.png
  AssetGenImage get flt => const AssetGenImage('assets/images/skills/flt.png');

  /// File path: assets/images/skills/js.png
  AssetGenImage get js => const AssetGenImage('assets/images/skills/js.png');

  /// File path: assets/images/skills/mark.png
  AssetGenImage get mark =>
      const AssetGenImage('assets/images/skills/mark.png');

  /// File path: assets/images/skills/php.png
  AssetGenImage get php => const AssetGenImage('assets/images/skills/php.png');

  /// File path: assets/images/skills/python.png
  AssetGenImage get python =>
      const AssetGenImage('assets/images/skills/python.png');

  /// File path: assets/images/skills/swift.png
  AssetGenImage get swift =>
      const AssetGenImage('assets/images/skills/swift.png');

  /// File path: assets/images/skills/wp.png
  AssetGenImage get wp => const AssetGenImage('assets/images/skills/wp.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cpp, dj, flt, js, mark, php, python, swift, wp];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
