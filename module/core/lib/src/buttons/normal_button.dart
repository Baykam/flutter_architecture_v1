import 'package:flutter/material.dart';

///radius button tap
final class NormalButton extends StatelessWidget {
  const NormalButton(
      {super.key, required this.title, this.onPressed, this.radius});

  /// title text
  final String title;

  ///button on pressed
  final VoidCallback? onPressed;

  final double? radius;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: radius ?? 20,
      onTap: onPressed,
      child: Text(title),
    );
  }
}
