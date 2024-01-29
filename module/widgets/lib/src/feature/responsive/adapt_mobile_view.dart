import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

/// Adapt your view only phone and tablet
class AdaptMobileView extends StatelessWidget {
  ///Define your Custom widget for phone, tablet
  const AdaptMobileView({
    super.key,
    required this.phone,
    required this.tablet,
  });

  ///Define your custom mobile widget
  final Widget phone;

  ///Define your custom tablet widget
  final Widget tablet;
  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;

    return phone;
  }
}
