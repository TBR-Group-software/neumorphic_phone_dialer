import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';

class RoundColoredButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const RoundColoredButton({
    required this.child,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 60,
          maxWidth: 60,
        ),
        child: NeumorphicButton(
          minDistance: -3,
          padding: const EdgeInsets.all(7),
          style: NeumorphicStyle(
            color: AppTheme.of(context).colors.buttonColor,
            shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
            shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
            depth: 100,
            intensity: 10,
            boxShape: const NeumorphicBoxShape.circle(),
          ),
          onPressed: onTap,
          child: Center(
            child: Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                color: AppTheme.of(context).colors.buttonColor,
                shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
                shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
                border: NeumorphicBorder(
                  width: 1,
                  color: AppTheme.of(context).colors.borderColor,
                ),
                //color: AppTheme.of(context).colors.darkOrange,
                boxShape: const NeumorphicBoxShape.circle(),
              ),
              child: Neumorphic(
                margin: const EdgeInsets.all(8.0),
                style: NeumorphicStyle(
                  shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
                  shadowLightColor:
                      AppTheme.of(context).colors.shadowLightColor,
                  border: NeumorphicBorder(
                    width: 2,
                    color: AppTheme.of(context).colors.liteOrange,
                  ),
                  shape: NeumorphicShape.concave,
                  surfaceIntensity: 0.5,
                  color: AppTheme.of(context).colors.darkOrange,
                  boxShape: const NeumorphicBoxShape.circle(),
                ),
                child: Center(
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
