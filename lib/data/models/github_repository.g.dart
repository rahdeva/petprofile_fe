// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubRepositoryImpl _$$GitHubRepositoryImplFromJson(
        Map<String, dynamic> json) =>
    _$GitHubRepositoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      language: json['language'] as String?,
      stargazersCount: (json['stargazers_count'] as num?)?.toInt(),
      forksCount: (json['forks_count'] as num?)?.toInt(),
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$GitHubRepositoryImplToJson(
        _$GitHubRepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'owner': instance.owner,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'forks_count': instance.forksCount,
      'license': instance.license,
      'html_url': instance.htmlUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
    };

_$LicenseImpl _$$LicenseImplFromJson(Map<String, dynamic> json) =>
    _$LicenseImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$LicenseImplToJson(_$LicenseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
