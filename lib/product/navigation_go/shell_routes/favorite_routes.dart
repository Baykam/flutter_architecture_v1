import 'package:architecture_template/feature/favorite/view/favorite_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class FavoriteRoutes {
  static final GlobalKey<NavigatorState> _favoriteKey =
      GlobalKey<NavigatorState>();

  StatefulShellBranch get favoriteBranch => _favoriteStatefulShellBranch;

  final _favoriteStatefulShellBranch = StatefulShellBranch(
    routes: [
      GoRoute(
        path: 'favorite',
        builder: (context, state) => const FavoriteView(),
        parentNavigatorKey: _favoriteKey,
      ),
    ],
  );
}
