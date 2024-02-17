import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class HomeShellRoute {
  HomeShellRoute();
  static final GlobalKey<NavigatorState> _homeKey = GlobalKey<NavigatorState>();

  StatefulShellBranch get homeBranch => _homeStateFulBranch;

  final _homeStateFulBranch = StatefulShellBranch(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
        parentNavigatorKey: _homeKey,
      ),
    ],
  );
}
