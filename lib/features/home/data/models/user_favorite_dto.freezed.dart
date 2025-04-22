// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_favorite_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFavoriteDto _$UserFavoriteDtoFromJson(Map<String, dynamic> json) {
  return _UserFavoriteDto.fromJson(json);
}

/// @nodoc
mixin _$UserFavoriteDto {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userPhoto => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;

  /// Serializes this UserFavoriteDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserFavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFavoriteDtoCopyWith<UserFavoriteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoriteDtoCopyWith<$Res> {
  factory $UserFavoriteDtoCopyWith(
          UserFavoriteDto value, $Res Function(UserFavoriteDto) then) =
      _$UserFavoriteDtoCopyWithImpl<$Res, UserFavoriteDto>;
  @useResult
  $Res call(
      {String? userId, String? userName, String? userPhoto, String? fullname});
}

/// @nodoc
class _$UserFavoriteDtoCopyWithImpl<$Res, $Val extends UserFavoriteDto>
    implements $UserFavoriteDtoCopyWith<$Res> {
  _$UserFavoriteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFavoriteDto
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
abstract class _$$UserFavoriteDtoImplCopyWith<$Res>
    implements $UserFavoriteDtoCopyWith<$Res> {
  factory _$$UserFavoriteDtoImplCopyWith(_$UserFavoriteDtoImpl value,
          $Res Function(_$UserFavoriteDtoImpl) then) =
      __$$UserFavoriteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId, String? userName, String? userPhoto, String? fullname});
}

/// @nodoc
class __$$UserFavoriteDtoImplCopyWithImpl<$Res>
    extends _$UserFavoriteDtoCopyWithImpl<$Res, _$UserFavoriteDtoImpl>
    implements _$$UserFavoriteDtoImplCopyWith<$Res> {
  __$$UserFavoriteDtoImplCopyWithImpl(
      _$UserFavoriteDtoImpl _value, $Res Function(_$UserFavoriteDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserFavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhoto = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_$UserFavoriteDtoImpl(
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
class _$UserFavoriteDtoImpl implements _UserFavoriteDto {
  const _$UserFavoriteDtoImpl(
      {this.userId, this.userName, this.userPhoto, this.fullname});

  factory _$UserFavoriteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoriteDtoImplFromJson(json);

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
    return 'UserFavoriteDto(userId: $userId, userName: $userName, userPhoto: $userPhoto, fullname: $fullname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoriteDtoImpl &&
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

  /// Create a copy of UserFavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoriteDtoImplCopyWith<_$UserFavoriteDtoImpl> get copyWith =>
      __$$UserFavoriteDtoImplCopyWithImpl<_$UserFavoriteDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoriteDtoImplToJson(
      this,
    );
  }
}

abstract class _UserFavoriteDto implements UserFavoriteDto {
  const factory _UserFavoriteDto(
      {final String? userId,
      final String? userName,
      final String? userPhoto,
      final String? fullname}) = _$UserFavoriteDtoImpl;

  factory _UserFavoriteDto.fromJson(Map<String, dynamic> json) =
      _$UserFavoriteDtoImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get userPhoto;
  @override
  String? get fullname;

  /// Create a copy of UserFavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFavoriteDtoImplCopyWith<_$UserFavoriteDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
