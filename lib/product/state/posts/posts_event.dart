part of 'posts_bloc.dart';

sealed class PostsEvent {
  const PostsEvent();
}

final class GetPosts extends PostsEvent {
  const GetPosts();
}
