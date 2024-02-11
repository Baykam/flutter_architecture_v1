import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:injectable/injectable.dart';
import 'package:repository/repository.dart';

part 'posts_event.dart';
part 'posts_state.dart';

// @InjectableInit()
final class PostsBloc extends Bloc<PostsEvent, PostsState> {
  ///PostBloc get data from [jsonPlaceHolder.com] to /posts
  PostsBloc(this._posts) : super(const Initial()) {
    on<GetPosts>(_onGetPosts);
  }

  final RepositoryPosts _posts;

  Future<void> _onGetPosts(
    GetPosts event,
    Emitter<PostsState> emit,
  ) async {
    emit(const Loading());
    try {
      final response = await _posts.getPosts();
      emit(
        response.isNotEmpty
            ? Success(posts: response)
            : const Failed(message: 'Request error'),
      );
    } catch (e) {
      emit(Failed(message: e.toString()));
    }
  }
}
