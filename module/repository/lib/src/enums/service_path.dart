enum ProductServicePath {
  users(path: "/user"),
  posts(path: "/posts");

  final String path;

  const ProductServicePath({required this.path});

  ///[withQuery] is add query to path
  ///example: users/123
  String withQuery({required String path}) {
    return '${this.path}/$path';
  }
}
