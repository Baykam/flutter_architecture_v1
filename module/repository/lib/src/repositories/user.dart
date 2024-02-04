import 'package:gen/gen.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      Duration(seconds: 2),
      () => _user = User(id: Uuid().v4()),
    );
  }
}
