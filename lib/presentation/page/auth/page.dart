import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neumorphic_phone_dialer/backbone/dependency_injection.dart'
    as di;
import 'package:neumorphic_phone_dialer/presentation/bloc/auth/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/base.dart';
import 'package:neumorphic_phone_dialer/presentation/page/auth/components/colored_button.dart';
import 'package:neumorphic_phone_dialer/presentation/page/auth/components/sgin_in_form.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/image_path.dart';
import 'package:neumorphic_phone_dialer/presentation/widget/appbar.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final AuthBloc _authBloc;

  String? _email, _password;

  @override
  void initState() {
    super.initState();
    _authBloc = di.sl.get();
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
            onTap: context.router.pop,
            child: SvgPicture.asset(
              AppImagePath.back,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: AppSignInForm(
                onDataEntered: (String? email, String? password) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      _email = email;
                      _password = password;
                    });
                  });
                },
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: BlocConsumer<AuthBloc, AuthState>(
                  bloc: _authBloc,
                  listener: (BuildContext context, AuthState state) {
                    if (state.status == BlocStatus.loaded &&
                        state.user != null) {
                      Navigator.of(context).pop();
                    }
                  },
                  builder: (BuildContext context, AuthState state) {
                    if (state.status == BlocStatus.loading) {
                      return AppColoredButton.child(
                        onTap: null,
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: AppTheme.of(context)
                                .colors
                                .coloredButtonContentColor,
                          ),
                        ),
                      );
                    } else {
                      return AppColoredButton(
                        onTap: _email != null && _password != null
                            ? () {
                                _authBloc.add(
                                  AuthEvent.signInWithEmailAndPassword(
                                    email: _email!,
                                    password: _password!,
                                  ),
                                );
                              }
                            : null,
                        text: 'Sign In',
                      );
                    }
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
