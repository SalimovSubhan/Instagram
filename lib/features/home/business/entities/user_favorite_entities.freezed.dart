// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_favorite_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFavoriteEntities _$UserFavoriteEntitiesFromJson(Map<String, dynamic> json) {
  return _UserFavoriteEntities.fromJson(json);
}

/// @nodoc
mixin _$UserFavoriteEntities {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userPhoto => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;

  /// Serializes this UserFavoriteEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserFavoriteEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFavoriteEntitiesCopyWith<UserFavoriteEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoriteEntitiesCopyWith<$Res> {
  factory $UserFavoriteEntitiesCopyWith(UserFavoriteEntities value,
          $Res Function(UserFavoriteEntities) then) =
      _$UserFavoriteEntitiesCopyWithImpl<$Res, UserFavoriteEntities>;
  @useResult
  $Res call(
      {String? userId, String? userName, String? userPhoto, String? fullname});
}

/// @nodoc
class _$UserFavoriteEntitiesCopyWithImpl<$Res,
        $Val extends UserFavoriteEntities>
    implements $UserFavoriteEntitiesCopyWith<$Res> {
  _$UserFavoriteEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFavoriteEntities
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
abstract class _$$UserFavoriteEntitiesImplCopyWith<$Res>
    implements $UserFavoriteEntitiesCopyWith<$Res> {
  factory _$$UserFavoriteEntitiesImplCopyWith(_$UserFavoriteEntitiesImpl value,
          $Res Function(_$UserFavoriteEntitiesImpl) then) =
      __$$UserFavoriteEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId, String? userName, String? userPhoto, String? fullname});
}

/// @nodoc
class __$$UserFavoriteEntitiesImplCopyWithImpl<$Res>
    extends _$UserFavoriteEntitiesCopyWithImpl<$Res, _$UserFavoriteEntitiesImpl>
    implements _$$UserFavoriteEntitiesImplCopyWith<$Res> {
  __$$UserFavoriteEntitiesImplCopyWithImpl(_$UserFavoriteEntitiesImpl _value,
      $Res Function(_$UserFavoriteEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserFavoriteEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhoto = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_$UserFavoriteEntitiesImpl(
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
class _$UserFavoriteEntitiesImpl implements _UserFavoriteEntities {
  const _$UserFavoriteEntitiesImpl(
      {this.userId, this.userName, this.userPhoto, this.fullname});

  factory _$UserFavoriteEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoriteEntitiesImplFromJson(json);

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
    return 'UserFavoriteEntities(userId: $userId, userName: $userName, userPhoto: $userPhoto, fullname: $fullname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoriteEntitiesImpl &&
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

  /// Create a copy of UserFavoriteEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoriteEntitiesImplCopyWith<_$UserFavoriteEntitiesImpl>
      get copyWith =>
          __$$UserFavoriteEntitiesImplCopyWithImpl<_$UserFavoriteEntitiesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoriteEntitiesImplToJson(
      this,
    );
  }
}

abstract class _UserFavoriteEntities implements UserFavoriteEntities {
  const factory _UserFavoriteEntities(
      {final String? userId,
      final String? userName,
      final String? userPhoto,
      final String? fullname}) = _$UserFavoriteEntitiesImpl;

  factory _UserFavoriteEntities.fromJson(Map<String, dynamic> json) =
      _$UserFavoriteEntitiesImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get userPhoto;
  @override
  String? get fullname;

  /// Create a copy of UserFavoriteEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFavoriteEntitiesImplCopyWith<_$UserFavoriteEntitiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
