import 'package:architecture_template/product/utility/constants/enums/shared_prefs.dart';
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

@immutable
class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final isAuthenticated =
        await SharedManager.i.getString(SharedPrefs.auth.value);

    if (isAuthenticated != null && isAuthenticated.isNotEmpty) {
      resolver.next(true);
      router.removeLast();
    } else {
      resolver.next(false);
    }
  }
}
