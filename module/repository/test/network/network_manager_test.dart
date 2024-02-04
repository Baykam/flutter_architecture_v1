import 'package:flutter_test/flutter_test.dart';
import 'package:gen/gen.dart';
import 'package:repository/src/config/app_environment.dart';
import 'package:repository/src/enums/service_path.dart';
import 'package:repository/src/network_manager/project_network_manager.dart';

void main() {
  late final NetworkManager _manager;
  setUp(() {
    AppEnvironment.general();
    _manager = NetworkManager();
  });

  test("get users from api", () async {
    final response = await _manager.dio.get(ProductServicePath.posts.path);
    final newData = response.data as List<dynamic>;
    final result = newData.map((e) => Posts.fromJson(e)).toList();
    expect(result, isNotNull);
  });

  test("get users from api with error", () async {
    _manager.setupInterceptors(
      onErrorStatus: (value) {
        expect(value, isNotNull);
      },
    );
    final response = await _manager.dio.get(ProductServicePath.users.path);
    final newData = response.data as List<dynamic>;
    final result = newData.map((e) => Posts.fromJson(e)).toList();
    expect(result, null);
  });
}
