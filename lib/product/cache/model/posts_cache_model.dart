import 'package:core/core.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

final class PostsCacheModel with CacheModel {
  PostsCacheModel({required this.posts});
  PostsCacheModel.empty() : posts = Posts();
  final Posts posts;

  @override
  CacheModel fromDynamicJson(json) {
    final jsonMap = json as Map<String, dynamic>?;
    if (jsonMap == null) {
      CustomLogger.showError<Posts>('Json cannot be null');
      return this;
    } else {
      return copyWith(
        posts: Posts.fromJson(jsonMap),
      );
    }
  }

  @override
  String get id => posts.id.toString();

  @override
  Map<String, dynamic> toJson() {
    return posts.toJson();
  }

  PostsCacheModel copyWith({Posts? posts}) {
    return PostsCacheModel(
      posts: posts ?? this.posts,
    );
  }
}
