import 'package:core/src/buttons/normal_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final class CustomLoginButton extends StatefulWidget {
  const CustomLoginButton({super.key, required this.onOperation});
  final AsyncCallback onOperation;
  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton> {
  ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isLoadingNotifier,
      builder: (context, value, child) {
        if (value) return const SizedBox();
        return NormalButton(
          title: "Login",
          onPressed: () {
            _isLoadingNotifier.value = true;
            widget.onOperation.call();
            if (!mounted) return;
            Future.delayed(
              Duration(seconds: 2),
              () => _isLoadingNotifier.value = false,
            );
          },
        );
      },
    );
  }
}
