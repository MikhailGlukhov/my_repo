/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAudioGen {
  const $AssetsAudioGen();

  /// File path: assets/audio/ring.mp3
  String get ring => 'assets/audio/ring.mp3';

  /// List of all assets
  List<String> get values => [ring];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add.png
  AssetGenImage get add => const AssetGenImage('assets/icons/add.png');

  /// File path: assets/icons/cancel.png
  AssetGenImage get cancel => const AssetGenImage('assets/icons/cancel.png');

  /// File path: assets/icons/en.png
  AssetGenImage get en => const AssetGenImage('assets/icons/en.png');

  /// File path: assets/icons/exit.png
  AssetGenImage get exit => const AssetGenImage('assets/icons/exit.png');

  /// File path: assets/icons/mail.png
  AssetGenImage get mail => const AssetGenImage('assets/icons/mail.png');

  /// File path: assets/icons/muscle.png
  AssetGenImage get muscle => const AssetGenImage('assets/icons/muscle.png');

  /// File path: assets/icons/pass.png
  AssetGenImage get pass => const AssetGenImage('assets/icons/pass.png');

  /// File path: assets/icons/ru.png
  AssetGenImage get ru => const AssetGenImage('assets/icons/ru.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [add, cancel, en, exit, mail, muscle, pass, ru, settings];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// File path: assets/translations/ru-RU.json
  String get ruRU => 'assets/translations/ru-RU.json';

  /// List of all assets
  List<String> get values => [enUS, ruRU];
}

class Assets {
  Assets._();

  static const $AssetsAudioGen audio = $AssetsAudioGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
