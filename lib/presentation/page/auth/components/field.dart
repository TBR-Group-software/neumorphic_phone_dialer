import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class AppAuthField extends StatelessWidget {
  const AppAuthField({
    this.hintText = '',
    this.title = '',
    this.ending,
    this.onChanged,
    this.obscureText = false,
    this.regexp,
    this.validator,
    Key? key,
  }) : super(key: key);

  final void Function(String text)? onChanged;
  final String? Function(String?)? validator;
  final String hintText, title;
  final String? regexp;
  final Widget? ending;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (title.isNotEmpty) ...<Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: titleThin(
                color: AppTheme.of(context).colors.titleTextColor,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
        ],
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 55,
          child: Neumorphic(
            style: NeumorphicStyle(
              color: AppTheme.of(context).colors.background,
              shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
              shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
              depth: 10,
              intensity: 10,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(63),
              ),
            ),
            padding: const EdgeInsets.all(4),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: AppTheme.of(context).colors.searchBorderColor,
                ),
                borderRadius: BorderRadius.circular(63),
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: LayoutBuilder(
                        builder: (_, BoxConstraints constraints) {
                          return TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: validator,
                            obscureText: obscureText,
                            onChanged: onChanged,
                            cursorColor: AppTheme.of(context).colors.gray,
                            style: bodySemiBold(
                              color: AppTheme.of(context).colors.titleTextColor,
                            ),
                            maxLines: 1,
                            decoration: InputDecoration(
                              isDense: true,
                              hintStyle: bodySemiBold(
                                color:
                                    AppTheme.of(context).colors.bodyTextColor,
                              ),
                              hintText: hintText,
                              contentPadding: EdgeInsets.only(
                                bottom: constraints.maxHeight / 12,
                              ),
                              border: InputBorder.none,
                            ),
                          );
                        },
                      ),
                    ),
                    if (ending != null) ...<Widget>[
                      const SizedBox(
                        width: 5,
                      ),
                      ending!,
                    ],
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
