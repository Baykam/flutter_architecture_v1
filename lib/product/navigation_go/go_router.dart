import 'package:architecture_template/product/navigation_go/auth/auth_guard.dart';
import 'package:architecture_template/product/navigation_go/error_handling/error_handling.dart';
import 'package:architecture_template/product/navigation_go/shell_routes/favorite_routes.dart';
import 'package:architecture_template/product/navigation_go/shell_routes/home_routes.dart';
import 'package:architecture_template/product/navigation_go/shell_routes/profile_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///Application router integration
final class ApplicationGoRouter {
  ApplicationGoRouter._();

  static final GlobalKey<NavigatorState> _parentKey =
      GlobalKey<NavigatorState>();

  ///Router usage with [GoRouter] usage for nestedNavigation
  GoRouter get router => _router;

  final _router = GoRouter(
    onException: (context, state, router) =>
        RouterOnException().onException(context, state, router),
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _parentKey,
        branches: [
          HomeShellRoute().homeBranch,
          FavoriteRoutes().favoriteBranch,
          ProfileRoutes().profileBranch,
        ],
      ),
    ],
    redirect: (context, state) async =>
        await GoAuthGuard().authGuard(context, state),
  );
}
