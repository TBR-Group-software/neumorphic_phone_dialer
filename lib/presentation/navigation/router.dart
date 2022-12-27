import 'package:auto_route/auto_route.dart';
import 'package:neumorphic_phone_dialer/presentation/page/contacts/page.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/page.dart';

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
  ],
)
class $AppRouter {}
