import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';

class AppContactAvatar extends StatelessWidget {
  const AppContactAvatar({
    required this.assetPath,
    this.enableBorder = false,
    Key? key,
  }) : super(key: key);

  final bool enableBorder;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(17),
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        shadowLightColorEmboss: AppTheme.of(context).colors.shadowLightColor,
        shadowDarkColorEmboss: AppTheme.of(context).colors.shadowDarkColor,
        color: AppTheme.of(context).colors.borderColor,
        depth: -10,
        boxShape: const NeumorphicBoxShape.circle(),
      ),
      child: enableBorder
          ? Neumorphic(
        padding: const EdgeInsets.all(12),
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
                shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
                color: AppTheme.of(context).colors.darkOrange,
                depth: -100,
                boxShape: const NeumorphicBoxShape.circle(),
              ),
              child: _buildImage(),
            )
          : _buildImage(),
    );
  }

  Widget _buildImage() => ClipOval(
        child: Image.asset(
          assetPath,
          fit: BoxFit.cover,
        ),
      );
}
