import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/page/auth/components/colored_button.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class ResetPasswordSecondStep extends StatelessWidget {
  const ResetPasswordSecondStep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Reset Password',
          style: titleMedium(
            color: AppTheme.of(context).colors.titleTextColor,
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          'We just sent a verification code on your email. Please follow the instructions in the letter.',
          textAlign: TextAlign.center,
          style: bodySemiBold(
            color: AppTheme.of(context).colors.bodyTextColor,
          ),
        ),
        const Spacer(),
        AppColoredButton(
          onTap: () {
            Navigator.of(context).pop();
          },
          text: 'Done',
        ),
      ],
    );
  }
}
