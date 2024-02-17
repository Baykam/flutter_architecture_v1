import 'package:architecture_template/feature/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class ProfileRoutes {
  static final GlobalKey<NavigatorState> _profileKey =
      GlobalKey<NavigatorState>();

  StatefulShellBranch get profileBranch => _profileStatefulShellBranch;

  final _profileStatefulShellBranch = StatefulShellBranch(
    routes: [
      GoRoute(
        path: 'profile',
        builder: (context, state) => const ProfileView(),
        parentNavigatorKey: _profileKey,
      ),
    ],
  );
}
