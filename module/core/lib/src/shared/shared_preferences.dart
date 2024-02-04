import 'package:core/src/shared/shared_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class SharedManager {
  SharedManager._internal();
  static final SharedManager _instance = SharedManager._internal();
  static SharedManager get i => _instance;
  SharedPreferences? preferences;

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPrefences() {
    if (preferences == null) throw SharedNotInitialException();
  }

  Future<void> saveString(String key, String value) async {
    _checkPrefences();
    await preferences?.setString(key, value);
  }

  Future<void> saveInt(String key, int value) async {
    _checkPrefences();
    await preferences?.setInt(key, value);
  }

  Future<void> saveDouble(String key, double value) async {
    _checkPrefences();
    await preferences?.setDouble(key, value);
  }

  Future<void> saveBool(String key, bool value) async {
    _checkPrefences();
    await preferences?.setBool(key, value);
  }

  Future<void> saveStringItems(String key, List<String> value) async {
    _checkPrefences();
    await preferences?.setStringList(key, value);
  }

  List<String>? getStrings(String key) {
    _checkPrefences();
    return preferences?.getStringList(key);
  }

  String? getString(String key) {
    _checkPrefences();
    return preferences?.getString(key);
  }

  int? getInt(String key) {
    _checkPrefences();
    return preferences?.getInt(key);
  }

  double? getDouble(String key) {
    _checkPrefences();
    return preferences?.getDouble(key);
  }

  bool? getBool(String key) {
    _checkPrefences();
    return preferences?.getBool(key);
  }

  Set<String>? getKeys() {
    _checkPrefences();
    return preferences?.getKeys();
  }

  Future<bool> removeItem(String key) async {
    _checkPrefences();
    return (await preferences?.remove(key)) ?? false;
  }

  Future<void> clear() async {
    _checkPrefences();
    await preferences?.clear();
  }
}
