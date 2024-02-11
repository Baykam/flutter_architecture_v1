import 'package:gen/gen.dart';
import 'package:repository/repository.dart';
import 'package:repository/src/config/app_environment.dart';
import 'package:repository/src/network_manager/project_network_manager.dart';

final class RepositoryPosts {
  late final NetworkManager _manager;
  RepositoryPosts() {
    AppEnvironment.general();
    _manager = NetworkManager();
  }
  Future<List<Posts>> getPosts() async {
    final url = ProductServicePath.posts.path;
    final response = await _manager.dio.getUri(Uri.parse(url));
    final result = response.data.map((e) => Posts.fromJson(e)).toList();
    final isUsage = _manager.whichStatus(status: response.statusCode);
    if (isUsage == false) throw Exception();
    return result.cast<Posts>();
  }
}
