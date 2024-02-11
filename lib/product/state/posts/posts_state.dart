part of 'posts_bloc.dart';

sealed class PostsState extends Equatable {
  const PostsState();
  @override
  List<Object?> get props => [];
}

final class Initial extends PostsState {
  const Initial();
}

final class Loading extends PostsState {
  const Loading();
}

final class Failed extends PostsState {
  const Failed({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

final class Success extends PostsState {
  const Success({required this.posts});

  final List<Posts> posts;
  @override
  List<Object?> get props => [posts];
}
