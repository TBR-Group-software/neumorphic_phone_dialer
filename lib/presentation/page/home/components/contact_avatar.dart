import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';

class AppContactAvatar extends StatelessWidget {
  const AppContactAvatar({
    required this.imageUrl,
    this.enableBorder = false,
    Key? key,
  }) : super(key: key);

  final bool enableBorder;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(17),
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        color: AppTheme.of(context).colors.liteGray,
        depth: -100,
        boxShape: const NeumorphicBoxShape.circle(),
      ),
      child: enableBorder
          ? Neumorphic(
        padding: const EdgeInsets.all(12),
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
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
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      );
}
