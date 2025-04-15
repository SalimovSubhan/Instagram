// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_likes_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLikesEntities _$UserLikesEntitiesFromJson(Map<String, dynamic> json) {
  return _UserLikesEntities.fromJson(json);
}

/// @nodoc
mixin _$UserLikesEntities {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userPhoto => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;

  /// Serializes this UserLikesEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLikesEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLikesEntitiesCopyWith<UserLikesEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLikesEntitiesCopyWith<$Res> {
  factory $UserLikesEntitiesCopyWith(
          UserLikesEntities value, $Res Function(UserLikesEntities) then) =
      _$UserLikesEntitiesCopyWithImpl<$Res, UserLikesEntities>;
  @useResult
  $Res call(
      {String? userId, String? userName, String? userPhoto, String? fullname});
}

/// @nodoc
class _$UserLikesEntitiesCopyWithImpl<$Res, $Val extends UserLikesEntities>
    implements $UserLikesEntitiesCopyWith<$Res> {
  _$UserLikesEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLikesEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhoto = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhoto: freezed == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLikesEntitiesImplCopyWith<$Res>
    implements $UserLikesEntitiesCopyWith<$Res> {
  factory _$$UserLikesEntitiesImplCopyWith(_$UserLikesEntitiesImpl value,
          $Res Function(_$UserLikesEntitiesImpl) then) =
      __$$UserLikesEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId, String? userName, String? userPhoto, String? fullname});
}

/// @nodoc
class __$$UserLikesEntitiesImplCopyWithImpl<$Res>
    extends _$UserLikesEntitiesCopyWithImpl<$Res, _$UserLikesEntitiesImpl>
    implements _$$UserLikesEntitiesImplCopyWith<$Res> {
  __$$UserLikesEntitiesImplCopyWithImpl(_$UserLikesEntitiesImpl _value,
      $Res Function(_$UserLikesEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLikesEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhoto = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_$UserLikesEntitiesImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhoto: freezed == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLikesEntitiesImpl implements _UserLikesEntities {
  const _$UserLikesEntitiesImpl(
      {this.userId, this.userName, this.userPhoto, this.fullname});

  factory _$UserLikesEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLikesEntitiesImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? userPhoto;
  @override
  final String? fullname;

  @override
  String toString() {
    return 'UserLikesEntities(userId: $userId, userName: $userName, userPhoto: $userPhoto, fullname: $fullname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLikesEntitiesImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhoto, userPhoto) ||
                other.userPhoto == userPhoto) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userName, userPhoto, fullname);

  /// Create a copy of UserLikesEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLikesEntitiesImplCopyWith<_$UserLikesEntitiesImpl> get copyWith =>
      __$$UserLikesEntitiesImplCopyWithImpl<_$UserLikesEntitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLikesEntitiesImplToJson(
      this,
    );
  }
}

abstract class _UserLikesEntities implements UserLikesEntities {
  const factory _UserLikesEntities(
      {final String? userId,
      final String? userName,
      final String? userPhoto,
      final String? fullname}) = _$UserLikesEntitiesImpl;

  factory _UserLikesEntities.fromJson(Map<String, dynamic> json) =
      _$UserLikesEntitiesImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get userPhoto;
  @override
  String? get fullname;

  /// Create a copy of UserLikesEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLikesEntitiesImplCopyWith<_$UserLikesEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
