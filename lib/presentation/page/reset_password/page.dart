import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_phone_dialer/backbone/dependency_injection.dart'
    as di;
import 'package:neumorphic_phone_dialer/presentation/page/reset_password/step/first.dart';
import 'package:neumorphic_phone_dialer/presentation/page/reset_password/step/second.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/image_path.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';
import 'package:neumorphic_phone_dialer/presentation/widget/appbar.dart';

class RestPasswordPage extends StatefulWidget {
  const RestPasswordPage({Key? key}) : super(key: key);

  @override
  State<RestPasswordPage> createState() => _RestPasswordPageState();
}

class _RestPasswordPageState extends State<RestPasswordPage> {
  int _currentIndex = 0;
  List<Widget> _steps = <Widget>[];

  @override
  void initState() {
    super.initState();
    _steps = <Widget>[
      ResetPasswordFirstStep(
        authBloc: di.sl.get(),
        onDone: () {
          setState(() {
            _currentIndex = 1;
          });
        },
      ),
      const ResetPasswordSecondStep(),
    ];
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
            onTap: Navigator.of(context).pop,
            child: SvgPicture.asset(
              AppImagePath.back,
            ),
          ),
          ending: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              children: <Widget>[
                const Spacer(
                  flex: 6,
                ),
                Text(
                  'Reset password',
                  style: bodySemiBold(
                    color: AppTheme.of(context).colors.bodyTextColor,
                  ),
                ),
                const Spacer(
                  flex: 11,
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(33),
          child: _steps[_currentIndex],
        ),
      ),
    );
  }
}
