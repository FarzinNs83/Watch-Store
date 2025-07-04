/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/bold.ttf
  String get bold => 'assets/fonts/bold.ttf';

  /// File path: assets/fonts/demibold.ttf
  String get demibold => 'assets/fonts/demibold.ttf';

  /// File path: assets/fonts/extrabold.ttf
  String get extrabold => 'assets/fonts/extrabold.ttf';

  /// File path: assets/fonts/extralight.ttf
  String get extralight => 'assets/fonts/extralight.ttf';

  /// File path: assets/fonts/light.ttf
  String get light => 'assets/fonts/light.ttf';

  /// File path: assets/fonts/medium.ttf
  String get medium => 'assets/fonts/medium.ttf';

  /// File path: assets/fonts/regular.ttf
  String get regular => 'assets/fonts/regular.ttf';

  /// File path: assets/fonts/thin.ttf
  String get thin => 'assets/fonts/thin.ttf';

  /// File path: assets/fonts/ultrabold.ttf
  String get ultrabold => 'assets/fonts/ultrabold.ttf';

  /// List of all assets
  List<String> get values => [
    bold,
    demibold,
    extrabold,
    extralight,
    light,
    medium,
    regular,
    thin,
    ultrabold,
  ];
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/png/logo.png');

  /// File path: assets/png/unnamed.png
  AssetGenImage get unnamed => const AssetGenImage('assets/png/unnamed.png');

  /// File path: assets/png/user.png
  AssetGenImage get user => const AssetGenImage('assets/png/user.png');

  /// File path: assets/png/watch.png
  AssetGenImage get watch => const AssetGenImage('assets/png/watch.png');

  /// File path: assets/png/watch1.png
  AssetGenImage get watch1 => const AssetGenImage('assets/png/watch1.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo, unnamed, user, watch, watch1];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/avatar.svg
  String get avatar => 'assets/svg/avatar.svg';

  /// File path: assets/svg/back.svg
  String get back => 'assets/svg/back.svg';

  /// File path: assets/svg/basket.svg
  String get basket => 'assets/svg/basket.svg';

  /// File path: assets/svg/cancelled.svg
  String get cancelled => 'assets/svg/cancelled.svg';

  /// File path: assets/svg/cart.svg
  String get cart => 'assets/svg/cart.svg';

  /// File path: assets/svg/classic.svg
  String get classic => 'assets/svg/classic.svg';

  /// File path: assets/svg/close.svg
  String get close => 'assets/svg/close.svg';

  /// File path: assets/svg/delete.svg
  String get delete => 'assets/svg/delete.svg';

  /// File path: assets/svg/delivered.svg
  String get delivered => 'assets/svg/delivered.svg';

  /// File path: assets/svg/desktop.svg
  String get desktop => 'assets/svg/desktop.svg';

  /// File path: assets/svg/digital.svg
  String get digital => 'assets/svg/digital.svg';

  /// File path: assets/svg/home.svg
  String get home => 'assets/svg/home.svg';

  /// File path: assets/svg/in_proccess.svg
  String get inProccess => 'assets/svg/in_proccess.svg';

  /// File path: assets/svg/left_arrow.svg
  String get leftArrow => 'assets/svg/left_arrow.svg';

  /// File path: assets/svg/location.svg
  String get location => 'assets/svg/location.svg';

  /// File path: assets/svg/location_add.svg
  String get locationAdd => 'assets/svg/location_add.svg';

  /// File path: assets/svg/minus.svg
  String get minus => 'assets/svg/minus.svg';

  /// File path: assets/svg/phone.svg
  String get phone => 'assets/svg/phone.svg';

  /// File path: assets/svg/plus.svg
  String get plus => 'assets/svg/plus.svg';

  /// File path: assets/svg/postal_code.svg
  String get postalCode => 'assets/svg/postal_code.svg';

  /// File path: assets/svg/profile.svg
  String get profile => 'assets/svg/profile.svg';

  /// File path: assets/svg/search.svg
  String get search => 'assets/svg/search.svg';

  /// File path: assets/svg/smart.svg
  String get smart => 'assets/svg/smart.svg';

  /// File path: assets/svg/sort.svg
  String get sort => 'assets/svg/sort.svg';

  /// File path: assets/svg/user.svg
  String get user => 'assets/svg/user.svg';

  /// File path: assets/svg/user_menu.svg
  String get userMenu => 'assets/svg/user_menu.svg';

  /// List of all assets
  List<String> get values => [
    avatar,
    back,
    basket,
    cancelled,
    cart,
    classic,
    close,
    delete,
    delivered,
    desktop,
    digital,
    home,
    inProccess,
    leftArrow,
    location,
    locationAdd,
    minus,
    phone,
    plus,
    postalCode,
    profile,
    search,
    smart,
    sort,
    user,
    userMenu,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

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
