import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/data.dart';

const AppThemeData liteTheme = AppThemeData(
  colors: AppColors(
    darkOrange: Color(0xFFFA4A02),
    orange: Color(0xFFFA7509),
    liteOrange: Color(0xFFFD9704),
    liteGray: Color(0xFFE8EEF2),
    gray: Color(0xFF68768A),
    black: Color(0xFF252525),
    dirtyGray: Color(0xFFD6DBE3),
    white: Color(0xFFF5F5F5),
    purple: Color(0xFFAE22D6),
    litePurple: Color(0xFFC503FD),
    blue: Color(0xFF133AD1),
    liteBlue: Color(0xFF0537FC),
    background: Color(0xFFE8EEF2),
    shadowDarkColor: Color(0xFFBEC9DC),
    shadowLightColor: Color(0xFFFFFFFF),
    buttonColor: Color(0xFFE8EEF2),
    borderColor: Color(0xFFF5F5F5),
    bodyTextColor: Color(0xFF68768A),
    titleTextColor: Color(0xFF252525),
    searchBorderColor: Color(0xFFD6DBE3),
    coloredButtonContentColor: Color(0xFFFFFFFF),
  ),
  gradients: AppGradients(
    main: LinearGradient(
      colors: <Color>[
        Color(0xFFFA4A02),
        Color(0xFFFD9704),
      ],
    ),
    secondary: RadialGradient(
      colors: <Color>[
        Color(0xFFFFB469),
        Color(0xFFD67412),
      ],
    ),
    innerBorder: RadialGradient(
      colors: <Color>[
        Color(0xFFFFB469),
        Color(0xFFD67412),
      ],
    ),
    outerBorder: LinearGradient(
      colors: <Color>[
        Color(0xFFC6CEDA),
        Color(0xFFCAD1DD),
        Color(0xFFFEFEFF),
      ],
    ),
    contactBorder: LinearGradient(
      colors: <Color>[
        Color(0xFFFEFEFF),
        Color(0xFFCAD1DD),
        Color(0xFFC6CEDA),
      ],
    ),
  ),
);
