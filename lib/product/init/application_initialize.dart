import 'dart:async';

import 'package:architecture_template/product/init/bloc_init/bloc_init.dart';
import 'package:core/core.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

///This class is used to initialize the application process when start
final class ApplicationInitialize {
  ///when app in run in process
  Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
    FlutterError.onError = (details) {
      Logger().e(details.exceptionAsString());
    };

    await runZonedGuarded(
      () async {
        await BlocOverrides.runZoned(
          () async {
            await _initialize();
            runApp(await builder());
          },
          blocObserver: AppBlocObserver(),
        );
      },
      (error, stackTrace) => Logger().e(error.toString()),
    );
  }

  ///when app in run in process
  // Future<void> make() async {
  //   await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
  //     Logger().e(error.toString());
  //   });
  // }

  ///initialize method for app when starting
  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await DeviceUtility.instance.initPackageInfo();
    await SharedManager.i.init();
    await HiveCacheManager().init(items: []);
  }
}
