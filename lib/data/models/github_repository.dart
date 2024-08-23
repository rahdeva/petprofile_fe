// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({
    required int? id,
    required String? name,
    required String? description,
    required Owner? owner,
    required String? language,
    @JsonKey(name: 'stargazers_count') required int? stargazersCount,
    @JsonKey(name: 'forks_count') required int? forksCount,
    License? license,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepositoryFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    required String login,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@freezed
class License with _$License {
  const factory License({
    required String? name,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}
