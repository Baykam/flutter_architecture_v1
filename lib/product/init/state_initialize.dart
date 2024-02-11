import 'package:architecture_template/product/state/settings/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///Initialize blocProviders in product
final class StateInitialize extends StatelessWidget {
  ///required child Widget
  const StateInitialize({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SettingsBloc()),
      ],
      child: child,
    );
  }
}
