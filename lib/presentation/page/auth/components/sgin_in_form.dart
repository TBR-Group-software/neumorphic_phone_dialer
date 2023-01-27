import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_phone_dialer/backbone/regexp.dart';
import 'package:neumorphic_phone_dialer/presentation/navigation/router.gr.dart';
import 'package:neumorphic_phone_dialer/presentation/page/auth/components/field.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class AppSignInForm extends StatefulWidget {
  const AppSignInForm({
    required this.onDataEntered,
    Key? key,
  }) : super(key: key);

  final void Function(String? email, String? passowrd) onDataEntered;

  @override
  State<AppSignInForm> createState() => _AppSignInFormState();
}

class _AppSignInFormState extends State<AppSignInForm> {
  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AppAuthField(
          title: 'Email',
          hintText: 'my@mail.com',
          validator: (String? text) {
            if (text != null) {
              final bool hasMatch = RegExp(AppRegexp.password).hasMatch(text);
              if (hasMatch) {
                _email = text;
              } else {
                _email = null;
              }
            }
            widget.onDataEntered(_email, _password);
            return null;
          },
        ),
        const SizedBox(
          height: 38,
        ),
        AppAuthField(
          title: 'Password',
          obscureText: true,
          validator: (String? text) {
            if (text != null) {
              final bool hasMatch = RegExp(AppRegexp.password).hasMatch(text);
              if (hasMatch) {
                _password = text;
              } else {
                _password = null;
              }
            }
            widget.onDataEntered(_email, _password);
            return null;
          },
          hintText: '● ● ● ● ● ●',
        ),
        const SizedBox(
          height: 22,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                context.router.push(
                  const RestPasswordRoute(),
                );
              },
              child: Text(
                'Forgot password?',
                style: bodySemiBold(
                  color: AppTheme.of(context).colors.bodyTextColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
