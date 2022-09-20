import 'package:auto_route/auto_route.dart';
import 'package:neumorphic_phone_dialer/presentation/page/contacts/page.dart';
import 'package:neumorphic_phone_dialer/presentation/page/home/page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      page: HomePage,
      initial: true,
    ),
    AutoRoute<void>(
      page: ContactsPage,
    ),
  ],
)
class $AppRouter {}
