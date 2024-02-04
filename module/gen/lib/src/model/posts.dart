import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'posts.g.dart';

@JsonSerializable()
class Posts extends Equatable {
  Posts({this.userId, this.id, this.title, this.body});

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);

  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  Map<String, dynamic> toJson() => _$PostsToJson(this);

  @override
  List<Object?> get props => [userId, id, title, body];

  @override
  Posts copyWith({
    required int? userId,
    required int? id,
    required String? title,
    required String? body,
  }) {
    return Posts(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      body: body ?? this.body,
      title: title ?? this.title,
    );
  }
}
