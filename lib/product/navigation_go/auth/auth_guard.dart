import 'dart:async';

import 'package:architecture_template/product/utility/constants/enums/shared_prefs.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoAuthGuard {
  String loginKey = '';
  Future<FutureOr<String?>> authGuard(
      BuildContext context, GoRouterState state) async {
    final String? isLogged = SharedManager.i.getString(SharedPrefs.auth.value);
    if (isLogged != null && isLogged.isNotEmpty) loginKey = isLogged;
    final bool loggedIn =
        state.matchedLocation == (loginKey.isNotEmpty ? '/login' : '/');
    if (!loggedIn) return '/login';
    if (loggedIn) return '/';
    return null;
  }
}
