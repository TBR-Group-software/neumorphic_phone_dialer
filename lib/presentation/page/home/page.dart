import 'package:auto_route/auto_route.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_phone_dialer/backbone/dependency_injection.dart'
    as di;
import 'package:neumorphic_phone_dialer/presentation/bloc/call/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/navigation/router.gr.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/contact_avatar.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/dialer_pad.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/phone_number_field.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/image_path.dart';
import 'package:neumorphic_phone_dialer/presentation/widget/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _controller;
  late final CallBloc _callBloc;

  @override
  void initState() {
    super.initState();
    _callBloc = di.sl.get();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: -10,
        intensity: 1,
        //shadowDarkColorEmboss: Colors.red,
        shadowDarkColorEmboss: Color(0xff5a5e69),
        color: AppTheme.of(context).colors.background,
      ),
      child: Scaffold(
        appBar: ApplicationAppBar(
          leading: GestureDetector(
            onTap: () {
              context.router.push(
                const ContactsRoute(),
              );
            },
            child: SvgPicture.asset(
              AppImagePath.menu,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 168,
              height: 168,
              child: AppContactAvatar(
                enableBorder: true,
                imageUrl:
                    'https://static.remove.bg/remove-bg-web/c4b29bf4b97131238fda6316e24c9b3606c18000/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
              ),
            ),
            AppPhoneNumberField(
              controller: _controller,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 58),
                child: AppDialerPad(
                  controller: _controller,
                  onCallButtonTap: () {
                    _callBloc.add(
                      CallEvent.makeCall(
                        phoneNumber: _controller.text,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
