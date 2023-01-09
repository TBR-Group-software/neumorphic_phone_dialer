import 'package:flutter/material.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/delete_button.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/round_char_button.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/round_colored_button.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';

class AppDialerPad extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onCallButtonTap;

  const AppDialerPad({
    required this.controller,
    required this.onCallButtonTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AppRoundCharButton(
                controller: controller,
                char: '1',
              ),
              AppRoundCharButton(
                controller: controller,
                char: '2',
              ),
              AppRoundCharButton(
                controller: controller,
                char: '3',
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AppRoundCharButton(
                controller: controller,
                char: '4',
              ),
              AppRoundCharButton(
                controller: controller,
                char: '5',
              ),
              AppRoundCharButton(
                controller: controller,
                char: '6',
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AppRoundCharButton(
                controller: controller,
                char: '7',
              ),
              AppRoundCharButton(
                controller: controller,
                char: '8',
              ),
              AppRoundCharButton(
                controller: controller,
                char: '9',
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AppRoundCharButton(
                controller: controller,
                char: '*',
              ),
              AppRoundCharButton(
                controller: controller,
                char: '0',
              ),
              AppRoundCharButton(
                controller: controller,
                char: '#',
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(
                  width: 50,
                ),
                RoundColoredButton(
                  onTap: onCallButtonTap,
                  child: Icon(
                    Icons.phone_rounded,
                    size: 21,
                    color: AppTheme.of(context).colors.white,
                  ),
                ),
                AppDialerDeleteButton(
                  controller: controller,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
