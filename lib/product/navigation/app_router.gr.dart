// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:architecture_template/feature/auth/view/aut_view.dart' as _i1;
import 'package:architecture_template/feature/dash_board/dash_board_view.dart'
    as _i2;
import 'package:architecture_template/feature/favorite/view/favorite_view.dart'
    as _i3;
import 'package:architecture_template/feature/home/view/home_detail_view.dart'
    as _i4;
import 'package:architecture_template/feature/home/view/home_view.dart' as _i5;
import 'package:architecture_template/feature/profile/view/profile_view.dart'
    as _i6;
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthView(),
      );
    },
    FavoriteAutoRouterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavoriteAutoRouterView(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavoriteView(),
      );
    },
    HomeAutoRouterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeAutoRouterView(),
      );
    },
    HomeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeDetailView(
          id: args.id,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeView(),
      );
    },
    ProfileAutoRouterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProfileAutoRouterView(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileView(),
      );
    },
    TabNavigationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.TabNavigationView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthView]
class AuthRoute extends _i7.PageRouteInfo<void> {
  const AuthRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavoriteAutoRouterView]
class FavoriteAutoRouterRoute extends _i7.PageRouteInfo<void> {
  const FavoriteAutoRouterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          FavoriteAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteAutoRouterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FavoriteView]
class FavoriteRoute extends _i7.PageRouteInfo<void> {
  const FavoriteRoute({List<_i7.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeAutoRouterView]
class HomeAutoRouterRoute extends _i7.PageRouteInfo<void> {
  const HomeAutoRouterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeAutoRouterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeDetailView]
class HomeDetailRoute extends _i7.PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({
    required int id,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          HomeDetailRoute.name,
          args: HomeDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailRoute';

  static const _i7.PageInfo<HomeDetailRouteArgs> page =
      _i7.PageInfo<HomeDetailRouteArgs>(name);
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final _i8.Key? key;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i5.HomeView]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProfileAutoRouterView]
class ProfileAutoRouterRoute extends _i7.PageRouteInfo<void> {
  const ProfileAutoRouterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileAutoRouterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfileView]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.TabNavigationView]
class TabNavigationRoute extends _i7.PageRouteInfo<void> {
  const TabNavigationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TabNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabNavigationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
