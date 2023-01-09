import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/backbone/dependency_injection.dart'
    as di;
import 'package:neumorphic_phone_dialer/presentation/navigation/router.gr.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/dark.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/lite.dart';

void main() {
  di.init();

  runApp(
    const DialerApp(),
  );
}

class DialerApp extends StatefulWidget {
  const DialerApp({Key? key}) : super(key: key);

  @override
  State<DialerApp> createState() => _DialerAppState();
}

class _DialerAppState extends State<DialerApp> {
  late final AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Neumorphic Phone Dialer',
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      builder: (BuildContext context, Widget? child) {
        return AppTheme(
          data: MediaQuery.of(context).platformBrightness == Brightness.dark
              ? darkTheme
              : liteTheme,
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}
