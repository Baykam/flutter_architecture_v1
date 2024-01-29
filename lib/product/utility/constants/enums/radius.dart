enum ProjectRadius {
  ///[ProjectRadius.small] is 8
  small(value: 8),

  ///[ProjectRadius.normal] is 16
  normal(value: 16),

  ///[ProjectRadius.medium] is 20
  medium(value: 20),

  ///[ProjectRadius.large] is 32
  large(value: 32);

  ///project double radius
  final double value;

  const ProjectRadius({required this.value});
}
