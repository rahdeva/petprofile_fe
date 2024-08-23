import 'dart:convert';
import 'package:petprofile_fe/data/models/github_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static SharedPreferencesManager? _instance;
  late SharedPreferences _preferences;

  SharedPreferencesManager._internal();

  static Future<SharedPreferencesManager> getInstance() async {
    if (_instance == null) {
      _instance = SharedPreferencesManager._internal();
      await _instance!._init();
    }
    return _instance!;
  }

  Future<void> _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> setRepositories(String key, List<GitHubRepository> repositories) async {
    List<String> jsonStringList = repositories.map(
      (repo) => jsonEncode(repo.toJson())
    ).toList();
    await _preferences.setStringList(key, jsonStringList);
  }

  List<GitHubRepository>? getRepositories(String key) {
    List<String>? jsonStringList = _preferences.getStringList(key);
    if (jsonStringList == null) return null;
    return jsonStringList.map(
      (jsonString) => GitHubRepository.fromJson(jsonDecode(jsonString))
    ).toList();
  }

  Future<void> setRepositoryDetail(String key, GitHubRepository repository) async {
    String jsonString = jsonEncode(repository.toJson());
    await _preferences.setString(key, jsonString);
  }

  GitHubRepository? getRepositoryDetail(String key) {
    String? jsonString = _preferences.getString(key);
    if (jsonString == null) return null;
    return GitHubRepository.fromJson(jsonDecode(jsonString));
  }
}
