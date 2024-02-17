import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///Application router integration
final class ApplicationGoRouter {
  ApplicationGoRouter._();

  static final GlobalKey<NavigatorState> _parentKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> _homeKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _favoriteKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _profileKey =
      GlobalKey<NavigatorState>();

  ///Router usage with [GoRouter] usage for nestedNavigation
  GoRouter get router => _router;

  final _router = GoRouter(
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _parentKey,
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => const HomeView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [],
          ),
          StatefulShellBranch(
            routes: [],
          ),
          StatefulShellBranch(
            routes: [],
          ),
        ],
      ),
    ],
  );
}
