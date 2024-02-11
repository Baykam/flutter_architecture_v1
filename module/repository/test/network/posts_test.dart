import 'package:flutter_test/flutter_test.dart';
import 'package:repository/src/repositories/posts.dart';

void main() {
  late final RepositoryPosts _posts;
  setUp(() {
    _posts = RepositoryPosts();
  });
  test("description", () async {
    final response = await _posts.getPosts();
    expect(response, isNotNull);
  });
}
