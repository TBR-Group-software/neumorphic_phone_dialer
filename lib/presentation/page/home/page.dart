import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_phone_dialer/backbone/dependency_injection.dart'
    as di;
import 'package:neumorphic_phone_dialer/presentation/bloc/auth/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/call/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/navigation/router.gr.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/contact_avatar.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/dialer_pad.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/components/phone_number_field.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/image_path.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';
import 'package:neumorphic_phone_dialer/presentation/widget/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _controller;
  late final CallBloc _callBloc;
  late final AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _callBloc = di.sl.get();
    _controller = TextEditingController();
    _authBloc = di.sl.get()
      ..add(
        const AuthEvent.getCurrentUser(),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: -10,
        intensity: 1,
        shadowLightColorEmboss: AppTheme.of(context).colors.shadowLightColor,
        shadowDarkColorEmboss: AppTheme.of(context).colors.shadowDarkColor,
        color: AppTheme.of(context).colors.background,
      ),
      child: Scaffold(
        appBar: ApplicationAppBar(
          rightPadding: 25,
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
          ending: BlocBuilder<AuthBloc, AuthState>(
            bloc: _authBloc,
            builder: (BuildContext context, AuthState state) {
              return GestureDetector(
                onTap: () {
                  if (state.user == null) {
                    context.router.push(
                      const AuthRoute(),
                    );
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      AppImagePath.user,
                      color: AppTheme.of(context).colors.darkOrange,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Account',
                      style: titleSmall(
                        color: AppTheme.of(context).colors.titleTextColor,
                      ),
                    ),
                  ],
                ),
              );
            },
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
                assetPath: AppImagePath.exampleUserPicture,
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
