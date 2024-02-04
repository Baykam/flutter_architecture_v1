import 'dart:io';

import 'package:flutter/material.dart';

final class ProjectNetworkErrorManager {
  final BuildContext context;

  ProjectNetworkErrorManager(this.context);

  void handleError(int value) {
    if (value == HttpStatus.unauthorized) {
      /// your [ HttpStatus.unauthorized ]  function
    }
    if (value == HttpStatus.badGateway) {}
  }
}
