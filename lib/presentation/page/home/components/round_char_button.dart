import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class AppRoundCharButton extends StatelessWidget {
  final String char;
  final TextEditingController controller;

  const AppRoundCharButton({
    required this.controller,
    required this.char,
    Key? key,
  })  : assert(char.length == 1, 'char should be a single character'),
        super(key: key);

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
          style: NeumorphicStyle(
            color: AppTheme.of(context).colors.buttonColor,
            shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
            shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
            depth: 100,
            intensity: 10,
            boxShape: const NeumorphicBoxShape.circle(),
          ),
          onPressed: () {
            controller.text = controller.value.text + char;
          },
          child: Center(
            child: Text(
              char,
              style: titleMedium(
                color: AppTheme.of(context).colors.bodyTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
