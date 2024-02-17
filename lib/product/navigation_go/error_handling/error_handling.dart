import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class RouterOnException {
  void onException(BuildContext context, GoRouterState state, GoRouter router) {
    router.go('/404', extra: state.uri.toString());
  }
}
