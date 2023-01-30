import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_phone_dialer/backbone/dependency_injection.dart'
    as di;
import 'package:neumorphic_phone_dialer/presentation/bloc/contacts/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/image_path.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class ContactsSearchBar extends StatefulWidget {
  const ContactsSearchBar({Key? key}) : super(key: key);

  @override
  State<ContactsSearchBar> createState() => _ContactsSearchBarState();
}

class _ContactsSearchBarState extends State<ContactsSearchBar> {
  late final ContactsBloc _contactsBloc;

  @override
  void initState() {
    super.initState();
    _contactsBloc = di.sl.get();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
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
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: AppTheme.of(context).colors.searchBorderColor,
              ),
              borderRadius: BorderRadius.circular(63),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child:
                      LayoutBuilder(builder: (_, BoxConstraints constraints) {
                    return TextField(
                      onChanged: (String text) {
                        _contactsBloc.add(
                          ContactsEvent.queryContacts(
                            query: text,
                          ),
                        );
                      },
                      cursorColor: AppTheme.of(context).colors.gray,
                      style: bodySemiBold(
                        color: AppTheme.of(context).colors.titleTextColor,
                      ),
                      decoration: InputDecoration(
                        hintStyle: bodySemiBold(
                          color: AppTheme.of(context).colors.bodyTextColor,
                        ),
                        hintText: 'Search contacts',
                        contentPadding: EdgeInsets.only(
                          bottom: constraints.maxHeight / 1.5,
                        ),
                        border: InputBorder.none,
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(AppImagePath.search),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
