// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../page/auth/page.dart' as _i3;
import '../page/contacts/page.dart' as _i2;
import '../page/home/page.dart' as _i1;
import '../page/reset_password/page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.CustomPage<void>(
        routeData: routeData,
        child: const _i1.HomePage(),
        transitionsBuilder: _i5.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ContactsRoute.name: (routeData) {
      return _i5.CustomPage<void>(
        routeData: routeData,
        child: const _i2.ContactsPage(),
        transitionsBuilder: _i5.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthRoute.name: (routeData) {
      return _i5.CustomPage<void>(
        routeData: routeData,
        child: const _i3.AuthPage(),
        transitionsBuilder: _i5.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RestPasswordRoute.name: (routeData) {
      return _i5.CustomPage<void>(
        routeData: routeData,
        child: const _i4.RestPasswordPage(),
        transitionsBuilder: _i5.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          ContactsRoute.name,
          path: '/contacts-page',
        ),
        _i5.RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
        ),
        _i5.RouteConfig(
          RestPasswordRoute.name,
          path: '/rest-password-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ContactsPage]
class ContactsRoute extends _i5.PageRouteInfo<void> {
  const ContactsRoute()
      : super(
          ContactsRoute.name,
          path: '/contacts-page',
        );

  static const String name = 'ContactsRoute';
}

/// generated route for
/// [_i3.AuthPage]
class AuthRoute extends _i5.PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: '/auth-page',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i4.RestPasswordPage]
class RestPasswordRoute extends _i5.PageRouteInfo<void> {
  const RestPasswordRoute()
      : super(
          RestPasswordRoute.name,
          path: '/rest-password-page',
        );

  static const String name = 'RestPasswordRoute';
}
