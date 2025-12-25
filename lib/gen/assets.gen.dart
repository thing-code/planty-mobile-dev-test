// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const AssetGenImage buttonIcon1 = AssetGenImage(
    'assets/Button - Icon 1.png',
  );
  static const AssetGenImage buttonIcon2 = AssetGenImage(
    'assets/Button - Icon 2.png',
  );
  static const AssetGenImage buttonIcon3 = AssetGenImage(
    'assets/Button - Icon 3.png',
  );
  static const AssetGenImage buttonIcon4 = AssetGenImage(
    'assets/Button - Icon 4.png',
  );
  static const AssetGenImage buttonIcon5 = AssetGenImage(
    'assets/Button - Icon 5.png',
  );
  static const AssetGenImage homeBanner = AssetGenImage(
    'assets/Home Banner.jpg',
  );
  static const AssetGenImage iconArrowPng = AssetGenImage(
    'assets/Icon - Arrow.png',
  );
  static const AssetGenImage iconArrowPng_ = AssetGenImage(
    'assets/Icon -Arrow.png',
  );
  static const AssetGenImage iconCalender = AssetGenImage(
    'assets/Icon - Calender.png',
  );
  static const AssetGenImage iconClockPng = AssetGenImage(
    'assets/Icon - Clock.png',
  );
  static const AssetGenImage iconClockPng_ = AssetGenImage(
    'assets/Icon -Clock.png',
  );
  static const AssetGenImage iconFilter = AssetGenImage(
    'assets/Icon - Filter.png',
  );
  static const AssetGenImage iconLocationPng = AssetGenImage(
    'assets/Icon - Location.png',
  );
  static const AssetGenImage iconLocationPng_ = AssetGenImage(
    'assets/Icon -Location.png',
  );
  static const AssetGenImage iconSearch = AssetGenImage(
    'assets/Icon - Search.png',
  );
  static const AssetGenImage image = AssetGenImage('assets/Image.jpg');
  static const AssetGenImage navIconAccount = AssetGenImage(
    'assets/Nav Icon - Account.png',
  );
  static const AssetGenImage navIconDiscover = AssetGenImage(
    'assets/Nav Icon - Discover.png',
  );
  static const AssetGenImage navIconHomeGreen = AssetGenImage(
    'assets/Nav Icon - Home Green.png',
  );
  static const AssetGenImage navIconHome = AssetGenImage(
    'assets/Nav Icon - Home.png',
  );
  static const AssetGenImage navIconInbox = AssetGenImage(
    'assets/Nav Icon - Inbox.png',
  );
  static const AssetGenImage navIconMallGreen = AssetGenImage(
    'assets/Nav Icon - Mall Green.png',
  );
  static const AssetGenImage navIconMall = AssetGenImage(
    'assets/Nav Icon - Mall.png',
  );
  static const AssetGenImage shopPlantsIcon1 = AssetGenImage(
    'assets/Shop Plants - Icon 1.png',
  );
  static const AssetGenImage shopPlantsIcon2 = AssetGenImage(
    'assets/Shop Plants - Icon 2.png',
  );
  static const AssetGenImage shopPlantsIcon3 = AssetGenImage(
    'assets/Shop Plants - Icon 3.png',
  );
  static const AssetGenImage shopPlantsIcon4 = AssetGenImage(
    'assets/Shop Plants - Icon 4.png',
  );
  static const AssetGenImage shopPlantsIcon5 = AssetGenImage(
    'assets/Shop Plants - Icon 5.png',
  );
  static const AssetGenImage shopPlantsIconMain = AssetGenImage(
    'assets/Shop Plants - Icon Main.png',
  );
  static const AssetGenImage trendingDiscoveries = AssetGenImage(
    'assets/Trending Discoveries.jpg',
  );

  /// List of all assets
  static List<AssetGenImage> get values => [
    buttonIcon1,
    buttonIcon2,
    buttonIcon3,
    buttonIcon4,
    buttonIcon5,
    homeBanner,
    iconArrowPng,
    iconArrowPng_,
    iconCalender,
    iconClockPng,
    iconClockPng_,
    iconFilter,
    iconLocationPng,
    iconLocationPng_,
    iconSearch,
    image,
    navIconAccount,
    navIconDiscover,
    navIconHomeGreen,
    navIconHome,
    navIconInbox,
    navIconMallGreen,
    navIconMall,
    shopPlantsIcon1,
    shopPlantsIcon2,
    shopPlantsIcon3,
    shopPlantsIcon4,
    shopPlantsIcon5,
    shopPlantsIconMain,
    trendingDiscoveries,
  ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
