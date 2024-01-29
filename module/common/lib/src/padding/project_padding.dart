import 'package:flutter/material.dart';

///Project general padding
final class ProjectPadding extends EdgeInsets {
  const ProjectPadding._() : super.all(0);

  ///[ProjectPadding.allSmall] is 8
  const ProjectPadding.allSmall() : super.all(8);

  ///[ProjectPadding.allNormal] is 20
  const ProjectPadding.allNormal() : super.all(20);

  ///[ProjectPadding.allMedium] is 16
  const ProjectPadding.allMedium() : super.all(16);

  ///[ProjectPadding.allLarge] is 32
  const ProjectPadding.allLarge() : super.all(32);

  /// Symmetric

  ///[ProjectPadding.verticalSmall] is vertical 15
  const ProjectPadding.verticalSmall() : super.symmetric(vertical: 15);

  ///[ProjectPadding.horizontalSmall] is horizontal 15
  const ProjectPadding.horizontalSmall() : super.symmetric(horizontal: 15);

  ///Only left, right, bottom, top
}
