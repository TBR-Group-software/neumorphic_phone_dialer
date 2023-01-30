import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/image_path.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class ContactsHeader extends StatelessWidget {
  const ContactsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: context.router.pop,
          child: SvgPicture.asset(
            AppImagePath.back,
          ),
        ),
        const Spacer(
          flex: 5,
        ),
        Text(
          'Contacts',
          style: titleMedium(
            color: AppTheme.of(context).colors.black,
          ),
        ),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }
}
