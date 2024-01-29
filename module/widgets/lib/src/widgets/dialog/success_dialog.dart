import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key, required this.title});
  final String title;

  static Future<bool?> show({
    required BuildContext context,
    required String title,
  }) async {
    return DialogBase.show(
      context: context,
      builder: (context) => SuccessDialog(title: title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.check),
        )
      ],
    );
  }
}
