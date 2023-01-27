import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class AppColoredButton extends StatelessWidget {
  const AppColoredButton({
    required this.text,
    this.onTap,
    Key? key,
  })  : child = null,
        super(key: key);

  const AppColoredButton.child({
    required this.child,
    this.onTap,
    Key? key,
  })  : text = '',
        super(key: key);

  final String text;
  final Widget? child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      minDistance: -3,
      style: NeumorphicStyle(
        color: AppTheme.of(context).colors.orange,
        shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
        shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
        depth: 4,
        intensity: 10,
        boxShape: NeumorphicBoxShape.roundRect(
          const BorderRadius.all(
            Radius.circular(28),
          ),
        ),
      ),
      onPressed: onTap,
      child: Center(
        child: child ?? Text(
          text,
          style: titleMedium(
            color: AppTheme.of(context).colors.coloredButtonContentColor,
          ),
        ),
      ),
    );
  }
}
