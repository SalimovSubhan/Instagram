// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileInfoEntity _$ProfileInfoEntityFromJson(Map<String, dynamic> json) {
  return _ProfileInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfileInfoEntity {
  String? get userImage => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  int? get postCount => throw _privateConstructorUsedError;
  int? get followerCount => throw _privateConstructorUsedError;
  int? get followingCount => throw _privateConstructorUsedError;

  /// Serializes this ProfileInfoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileInfoEntityCopyWith<ProfileInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoEntityCopyWith<$Res> {
  factory $ProfileInfoEntityCopyWith(
          ProfileInfoEntity value, $Res Function(ProfileInfoEntity) then) =
      _$ProfileInfoEntityCopyWithImpl<$Res, ProfileInfoEntity>;
  @useResult
  $Res call(
      {String? userImage,
      String? userId,
      String? userName,
      int? postCount,
      int? followerCount,
      int? followingCount});
}

/// @nodoc
class _$ProfileInfoEntityCopyWithImpl<$Res, $Val extends ProfileInfoEntity>
    implements $ProfileInfoEntityCopyWith<$Res> {
  _$ProfileInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userImage = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? postCount = freezed,
    Object? followerCount = freezed,
    Object? followingCount = freezed,
  }) {
    return _then(_value.copyWith(
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      postCount: freezed == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followerCount: freezed == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingCount: freezed == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileInfoEntityImplCopyWith<$Res>
    implements $ProfileInfoEntityCopyWith<$Res> {
  factory _$$ProfileInfoEntityImplCopyWith(_$ProfileInfoEntityImpl value,
          $Res Function(_$ProfileInfoEntityImpl) then) =
      __$$ProfileInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userImage,
      String? userId,
      String? userName,
      int? postCount,
      int? followerCount,
      int? followingCount});
}

/// @nodoc
class __$$ProfileInfoEntityImplCopyWithImpl<$Res>
    extends _$ProfileInfoEntityCopyWithImpl<$Res, _$ProfileInfoEntityImpl>
    implements _$$ProfileInfoEntityImplCopyWith<$Res> {
  __$$ProfileInfoEntityImplCopyWithImpl(_$ProfileInfoEntityImpl _value,
      $Res Function(_$ProfileInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userImage = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? postCount = freezed,
    Object? followerCount = freezed,
    Object? followingCount = freezed,
  }) {
    return _then(_$ProfileInfoEntityImpl(
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      postCount: freezed == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followerCount: freezed == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingCount: freezed == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileInfoEntityImpl implements _ProfileInfoEntity {
  const _$ProfileInfoEntityImpl(
      {this.userImage,
      this.userId,
      this.userName,
      this.postCount,
      this.followerCount,
      this.followingCount});

  factory _$ProfileInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileInfoEntityImplFromJson(json);

  @override
  final String? userImage;
  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final int? postCount;
  @override
  final int? followerCount;
  @override
  final int? followingCount;

  @override
  String toString() {
    return 'ProfileInfoEntity(userImage: $userImage, userId: $userId, userName: $userName, postCount: $postCount, followerCount: $followerCount, followingCount: $followingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInfoEntityImpl &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userImage, userId, userName,
      postCount, followerCount, followingCount);

  /// Create a copy of ProfileInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInfoEntityImplCopyWith<_$ProfileInfoEntityImpl> get copyWith =>
      __$$ProfileInfoEntityImplCopyWithImpl<_$ProfileInfoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _ProfileInfoEntity implements ProfileInfoEntity {
  const factory _ProfileInfoEntity(
      {final String? userImage,
      final String? userId,
      final String? userName,
      final int? postCount,
      final int? followerCount,
      final int? followingCount}) = _$ProfileInfoEntityImpl;

  factory _ProfileInfoEntity.fromJson(Map<String, dynamic> json) =
      _$ProfileInfoEntityImpl.fromJson;

  @override
  String? get userImage;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  int? get postCount;
  @override
  int? get followerCount;
  @override
  int? get followingCount;

  /// Create a copy of ProfileInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileInfoEntityImplCopyWith<_$ProfileInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
