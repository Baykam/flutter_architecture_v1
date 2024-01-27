import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()
final class Attributes with EquatableMixin {
  final String? title;
  final String? body;
  final DateTime? created;
  final DateTime? updated;

  Attributes({this.title, this.body, this.created, this.updated});

  @override
  List<Object?> get props => [title, body, created, updated];

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  Attributes copyWith({
    String? title,
    String? body,
    DateTime? created,
    DateTime? updated,
  }) {
    return Attributes(
      body: body ?? this.body,
      title: title ?? this.title,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }
}
