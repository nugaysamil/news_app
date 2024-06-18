/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/color.xml
  String get color => 'assets/color/color.xml';

  /// List of all assets
  List<String> get values => [color];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Group 25.png
  AssetGenImage get group25 => const AssetGenImage('assets/icons/Group 25.png');

  /// File path: assets/icons/Vector-4.png
  AssetGenImage get vector4 => const AssetGenImage('assets/icons/Vector-4.png');

  /// File path: assets/icons/back.png
  AssetGenImage get back => const AssetGenImage('assets/icons/back.png');

  /// File path: assets/icons/bell.png
  AssetGenImage get bell => const AssetGenImage('assets/icons/bell.png');

  /// File path: assets/icons/computer_person.png
  AssetGenImage get computerPerson =>
      const AssetGenImage('assets/icons/computer_person.png');

  /// File path: assets/icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/key.png
  AssetGenImage get key => const AssetGenImage('assets/icons/key.png');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/pencil.png
  AssetGenImage get pencil => const AssetGenImage('assets/icons/pencil.png');

  /// File path: assets/icons/place_pointer.png
  AssetGenImage get placePointer =>
      const AssetGenImage('assets/icons/place_pointer.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        group25,
        vector4,
        back,
        bell,
        computerPerson,
        facebook,
        google,
        home,
        key,
        notification,
        pencil,
        placePointer,
        profile,
        search
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/base_image.png
  AssetGenImage get baseImage =>
      const AssetGenImage('assets/images/base_image.png');

  /// File path: assets/images/splash_screen1.png
  AssetGenImage get splashScreen1 =>
      const AssetGenImage('assets/images/splash_screen1.png');

  /// File path: assets/images/splash_screen2.png
  AssetGenImage get splashScreen2 =>
      const AssetGenImage('assets/images/splash_screen2.png');

  /// File path: assets/images/splash_scren3.png
  AssetGenImage get splashScren3 =>
      const AssetGenImage('assets/images/splash_scren3.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [baseImage, splashScreen1, splashScreen2, splashScren3];
}

class Assets {
  Assets._();

  static const $AssetsColorGen color = $AssetsColorGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
