import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class AppThemeData with EquatableMixin {
  final AppColors colors;
  final AppGradients gradients;

  const AppThemeData({
    required this.colors,
    required this.gradients,
  });

  @override
  List<Object?> get props => <Object>[
        colors,
        gradients,
      ];
}

class AppColors with EquatableMixin {
  final Color darkOrange,
      liteOrange,
      liteGray,
      gray,
      dirtyGray,
      black,
      white,
      purple,
      litePurple,
      blue,
      liteBlue,
      background,
      shadowDarkColor,
      shadowLightColor;

  const AppColors({
    required this.darkOrange,
    required this.liteOrange,
    required this.liteGray,
    required this.dirtyGray,
    required this.black,
    required this.white,
    required this.purple,
    required this.litePurple,
    required this.blue,
    required this.liteBlue,
    required this.background,
    required this.gray,
    required this.shadowDarkColor,
    required this.shadowLightColor,
  });

  @override
  List<Object?> get props => <Object>[
        darkOrange,
        liteOrange,
        liteGray,
        gray,
        dirtyGray,
        black,
        white,
        purple,
        litePurple,
        blue,
        shadowDarkColor,
        shadowLightColor,
      ];
}

class AppGradients with EquatableMixin {
  final RadialGradient secondary, innerBorder;
  final LinearGradient main, outerBorder, contactBorder;

  const AppGradients({
    required this.main,
    required this.secondary,
    required this.innerBorder,
    required this.outerBorder,
    required this.contactBorder,
  });

  @override
  List<Object?> get props => <Object>[
        main,
        secondary,
        innerBorder,
        outerBorder,
        contactBorder,
      ];
}
