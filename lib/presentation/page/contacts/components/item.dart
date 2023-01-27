import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/call/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/image_path.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class ContactsItem extends StatelessWidget {
  const ContactsItem({
    required this.contact,
    required this.callBloc,
    Key? key,
  }) : super(key: key);

  final Contact contact;
  final CallBloc callBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: GestureDetector(
        onTap: () {
          callBloc.add(
            CallEvent.makeCall(
              phoneNumber: contact.phoneNumber,
            ),
          );
        },
        child: ColoredBox(
          color: Colors.transparent,
          child: Row(
            children: <Widget>[
              Neumorphic(
                padding: const EdgeInsets.all(10),
                style: NeumorphicStyle(
                  shadowLightColor:
                      AppTheme.of(context).colors.shadowLightColor,
                  shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
                  color: AppTheme.of(context).colors.background,
                  depth: 10,
                  intensity: 10,
                  boxShape: const NeumorphicBoxShape.circle(),
                ),
                child: ClipOval(
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      gradient: AppTheme.of(context).gradients.contactBorder,
                    ),
                    child: ClipOval(
                      child: contact.profileImage != null
                          ? Image.memory(
                              contact.profileImage!,
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                AppImagePath.user,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        '${contact.firstName} ${contact.secondName}',
                        style: titleSmall(
                          color: AppTheme.of(context).colors.titleTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                      child: Text(
                        contact.phoneNumber,
                        style: bodySemiBold(
                          color: AppTheme.of(context).colors.bodyTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ClipOval(
                child: SizedBox(
                  width: 14,
                  height: 14,
                  child: ColoredBox(
                    color: contact.color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
