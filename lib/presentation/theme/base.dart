import 'package:flutter/material.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/data.dart';

class AppTheme extends InheritedWidget {
  final AppThemeData data;

  const AppTheme({
    required Widget child,
    required this.data,
    Key? key,
  }) : super(key: key, child: child);

  static AppThemeData of(BuildContext context) {
    final AppTheme? widget =
        context.dependOnInheritedWidgetOfExactType<AppTheme>();
    if (widget != null) {
      return widget.data;
    }

    throw FlutterError(
        'AppTheme.of() called with a context that does not contain an AppTheme widget.\n');
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) => oldWidget.data != data;
}
