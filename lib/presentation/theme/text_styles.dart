

import 'package:flutter/painting.dart';

const String _inter = 'Inter';
const String _quicksand = 'Quicksand';

TextStyle body({required Color color}) => TextStyle(
      color: color,
      fontFamily: _inter,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );

TextStyle bodySemiBold({required Color color}) => TextStyle(
      color: color,
      fontFamily: _inter,
      fontWeight: FontWeight.w600,
      fontSize: 12,
    );

TextStyle bodyBold({required Color color}) => TextStyle(
      color: color,
      fontFamily: _inter,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    );

TextStyle titleMedium({required Color color}) => TextStyle(
      color: color,
      fontFamily: _quicksand,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );

TextStyle titleSmall({required Color color}) => TextStyle(
      color: color,
      fontFamily: _quicksand,
      fontWeight: FontWeight.w700,
      fontSize: 16,
    );
