import 'package:architecture_template/product/state/posts/posts_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:repository/repository.dart';

void main() {
  late final RepositoryPosts _posts;
  setUp(() {
    _posts = RepositoryPosts();
  });

  blocTest(
    "get data from jsonPlaceHolder from posts",
    build: () => PostsBloc(_posts),
    act: (bloc) => bloc.add(const GetPosts()),
    wait: Duration(seconds: 5),
    expect: () => [isA<PostsState>()],
  );
}
