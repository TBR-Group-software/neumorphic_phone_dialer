import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/backbone/regexp.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/auth/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/page/auth/components/colored_button.dart';
import 'package:neumorphic_phone_dialer/presentation/page/auth/components/field.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class ResetPasswordFirstStep extends StatefulWidget {
  const ResetPasswordFirstStep({
    required this.authBloc,
    required this.onDone,
    Key? key,
  }) : super(key: key);

  final AuthBloc authBloc;
  final VoidCallback onDone;

  @override
  State<ResetPasswordFirstStep> createState() => _ResetPasswordFirstStepState();
}

class _ResetPasswordFirstStepState extends State<ResetPasswordFirstStep> {
  String? _email;

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
        AppAuthField(
          title: 'Email',
          hintText: 'my@mail.com',
          validator: (String? text) {
            if (text != null) {
              final bool hasMatch = RegExp(AppRegexp.password).hasMatch(text);
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  if (hasMatch) {
                    _email = text;
                  } else {
                    _email = null;
                  }
                });
              });
            }
            return null;
          },
        ),
        const Spacer(),
        AppColoredButton(
          onTap: _email != null
              ? () {
                  widget.authBloc.add(
                    AuthEvent.requestPasswordReset(
                      email: _email!,
                    ),
                  );

                  widget.onDone();
                }
              : null,
          text: 'Reset',
        ),
      ],
    );
  }
}
