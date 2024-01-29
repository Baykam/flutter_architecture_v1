// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:core/src/buttons/normal_button.dart';

class DialogNormalButton extends StatelessWidget {
  const DialogNormalButton({
    Key? key,
    required this.func,
    required this.onComplete,
  }) : super(key: key);

  final Function<T>() func;
  final ValueChanged onComplete;
  @override
  Widget build(BuildContext context) {
    return NormalButton(
      title: "Dialog Normal Button",
      onPressed: () async {
        final response = await func;
        onComplete.call(response);
      },
    );
  }
}
