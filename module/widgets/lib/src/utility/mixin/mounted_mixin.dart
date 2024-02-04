import 'package:flutter/material.dart';

///Stateful widget mixin to handle loading state
mixin MountedMixin<T extends StatefulWidget> on State<T> {
  ///manage your mounted state
  void safeOperation(VoidCallback callback) {
    if (!mounted) return;
    callback.call();
  }
}
