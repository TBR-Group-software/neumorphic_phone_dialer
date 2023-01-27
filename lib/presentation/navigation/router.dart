import 'package:auto_route/auto_route.dart';
import 'package:neumorphic_phone_dialer/presentation/page/auth/page.dart';
import 'package:neumorphic_phone_dialer/presentation/page/contacts/page.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/page.dart';
import 'package:neumorphic_phone_dialer/presentation/page/reset_password/page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute<void>(
      page: HomePage,
      initial: true,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute<void>(
      page: ContactsPage,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute<void>(
      page: AuthPage,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute<void>(
      page: RestPasswordPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ],
)
class $AppRouter {}
