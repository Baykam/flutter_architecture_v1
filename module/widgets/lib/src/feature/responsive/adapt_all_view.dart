import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

/// Adapt your view phone, tablet, desktop
class AdaptAllView extends StatelessWidget {
  /// Define your widget
  /// tablet, phone, desktop
  const AdaptAllView(
      {super.key,
      required this.phone,
      required this.tablet,
      required this.desktop});

  /// Define your phone widget
  final Widget phone;

  ///define your tablet widget
  final Widget tablet;

  ///define your desktop widget
  final Widget desktop;
  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;
    if (ResponsiveBreakpoints.of(context).isDesktop) return desktop;

    return desktop;
  }
}
