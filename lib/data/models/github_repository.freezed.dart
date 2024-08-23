// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitHubRepository _$GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubRepository.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepository {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int? get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int? get forksCount => throw _privateConstructorUsedError;
  License? get license => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GitHubRepository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitHubRepositoryCopyWith<GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryCopyWith<$Res> {
  factory $GitHubRepositoryCopyWith(
          GitHubRepository value, $Res Function(GitHubRepository) then) =
      _$GitHubRepositoryCopyWithImpl<$Res, GitHubRepository>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      Owner? owner,
      String? language,
      @JsonKey(name: 'stargazers_count') int? stargazersCount,
      @JsonKey(name: 'forks_count') int? forksCount,
      License? license,
      @JsonKey(name: 'html_url') String? htmlUrl,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $OwnerCopyWith<$Res>? get owner;
  $LicenseCopyWith<$Res>? get license;
}

/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res, $Val extends GitHubRepository>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? owner = freezed,
    Object? language = freezed,
    Object? stargazersCount = freezed,
    Object? forksCount = freezed,
    Object? license = freezed,
    Object? htmlUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LicenseCopyWith<$Res>? get license {
    if (_value.license == null) {
      return null;
    }

    return $LicenseCopyWith<$Res>(_value.license!, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GitHubRepositoryImplCopyWith<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  factory _$$GitHubRepositoryImplCopyWith(_$GitHubRepositoryImpl value,
          $Res Function(_$GitHubRepositoryImpl) then) =
      __$$GitHubRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      Owner? owner,
      String? language,
      @JsonKey(name: 'stargazers_count') int? stargazersCount,
      @JsonKey(name: 'forks_count') int? forksCount,
      License? license,
      @JsonKey(name: 'html_url') String? htmlUrl,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $LicenseCopyWith<$Res>? get license;
}

/// @nodoc
class __$$GitHubRepositoryImplCopyWithImpl<$Res>
    extends _$GitHubRepositoryCopyWithImpl<$Res, _$GitHubRepositoryImpl>
    implements _$$GitHubRepositoryImplCopyWith<$Res> {
  __$$GitHubRepositoryImplCopyWithImpl(_$GitHubRepositoryImpl _value,
      $Res Function(_$GitHubRepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? owner = freezed,
    Object? language = freezed,
    Object? stargazersCount = freezed,
    Object? forksCount = freezed,
    Object? license = freezed,
    Object? htmlUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GitHubRepositoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubRepositoryImpl implements _GitHubRepository {
  const _$GitHubRepositoryImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.owner,
      required this.language,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'forks_count') required this.forksCount,
      this.license,
      @JsonKey(name: 'html_url') this.htmlUrl,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$GitHubRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubRepositoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final Owner? owner;
  @override
  final String? language;
  @override
  @JsonKey(name: 'stargazers_count')
  final int? stargazersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int? forksCount;
  @override
  final License? license;
  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'GitHubRepository(id: $id, name: $name, description: $description, owner: $owner, language: $language, stargazersCount: $stargazersCount, forksCount: $forksCount, license: $license, htmlUrl: $htmlUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubRepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      owner,
      language,
      stargazersCount,
      forksCount,
      license,
      htmlUrl,
      createdAt,
      updatedAt);

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubRepositoryImplCopyWith<_$GitHubRepositoryImpl> get copyWith =>
      __$$GitHubRepositoryImplCopyWithImpl<_$GitHubRepositoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubRepositoryImplToJson(
      this,
    );
  }
}

abstract class _GitHubRepository implements GitHubRepository {
  const factory _GitHubRepository(
      {required final int? id,
      required final String? name,
      required final String? description,
      required final Owner? owner,
      required final String? language,
      @JsonKey(name: 'stargazers_count') required final int? stargazersCount,
      @JsonKey(name: 'forks_count') required final int? forksCount,
      final License? license,
      @JsonKey(name: 'html_url') final String? htmlUrl,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at')
      final String? updatedAt}) = _$GitHubRepositoryImpl;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$GitHubRepositoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  Owner? get owner;
  @override
  String? get language;
  @override
  @JsonKey(name: 'stargazers_count')
  int? get stargazersCount;
  @override
  @JsonKey(name: 'forks_count')
  int? get forksCount;
  @override
  License? get license;
  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitHubRepositoryImplCopyWith<_$GitHubRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call({String login, @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$OwnerImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl implements _Owner {
  const _$OwnerImpl(
      {required this.login,
      @JsonKey(name: 'avatar_url') required this.avatarUrl});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  final String login;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  @override
  String toString() {
    return 'Owner(login: $login, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
          {required final String login,
          @JsonKey(name: 'avatar_url') required final String? avatarUrl}) =
      _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  String get login;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

License _$LicenseFromJson(Map<String, dynamic> json) {
  return _License.fromJson(json);
}

/// @nodoc
mixin _$License {
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this License to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LicenseCopyWith<License> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseCopyWith<$Res> {
  factory $LicenseCopyWith(License value, $Res Function(License) then) =
      _$LicenseCopyWithImpl<$Res, License>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$LicenseCopyWithImpl<$Res, $Val extends License>
    implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LicenseImplCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$$LicenseImplCopyWith(
          _$LicenseImpl value, $Res Function(_$LicenseImpl) then) =
      __$$LicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$LicenseImplCopyWithImpl<$Res>
    extends _$LicenseCopyWithImpl<$Res, _$LicenseImpl>
    implements _$$LicenseImplCopyWith<$Res> {
  __$$LicenseImplCopyWithImpl(
      _$LicenseImpl _value, $Res Function(_$LicenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$LicenseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LicenseImpl implements _License {
  const _$LicenseImpl({required this.name});

  factory _$LicenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LicenseImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'License(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LicenseImplCopyWith<_$LicenseImpl> get copyWith =>
      __$$LicenseImplCopyWithImpl<_$LicenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LicenseImplToJson(
      this,
    );
  }
}

abstract class _License implements License {
  const factory _License({required final String? name}) = _$LicenseImpl;

  factory _License.fromJson(Map<String, dynamic> json) = _$LicenseImpl.fromJson;

  @override
  String? get name;

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LicenseImplCopyWith<_$LicenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
