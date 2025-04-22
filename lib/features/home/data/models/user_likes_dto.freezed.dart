// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_likes_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLikesDto _$UserLikesDtoFromJson(Map<String, dynamic> json) {
  return _UserLikesDto.fromJson(json);
}

/// @nodoc
mixin _$UserLikesDto {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userPhoto => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;

  /// Serializes this UserLikesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLikesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLikesDtoCopyWith<UserLikesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLikesDtoCopyWith<$Res> {
  factory $UserLikesDtoCopyWith(
          UserLikesDto value, $Res Function(UserLikesDto) then) =
      _$UserLikesDtoCopyWithImpl<$Res, UserLikesDto>;
  @useResult
  $Res call(
      {String? userId, String? userName, String? userPhoto, String? fullname});
}

/// @nodoc
class _$UserLikesDtoCopyWithImpl<$Res, $Val extends UserLikesDto>
    implements $UserLikesDtoCopyWith<$Res> {
  _$UserLikesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLikesDto
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
abstract class _$$UserLikesDtoImplCopyWith<$Res>
    implements $UserLikesDtoCopyWith<$Res> {
  factory _$$UserLikesDtoImplCopyWith(
          _$UserLikesDtoImpl value, $Res Function(_$UserLikesDtoImpl) then) =
      __$$UserLikesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId, String? userName, String? userPhoto, String? fullname});
}

/// @nodoc
class __$$UserLikesDtoImplCopyWithImpl<$Res>
    extends _$UserLikesDtoCopyWithImpl<$Res, _$UserLikesDtoImpl>
    implements _$$UserLikesDtoImplCopyWith<$Res> {
  __$$UserLikesDtoImplCopyWithImpl(
      _$UserLikesDtoImpl _value, $Res Function(_$UserLikesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLikesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhoto = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_$UserLikesDtoImpl(
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
class _$UserLikesDtoImpl implements _UserLikesDto {
  const _$UserLikesDtoImpl(
      {this.userId, this.userName, this.userPhoto, this.fullname});

  factory _$UserLikesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLikesDtoImplFromJson(json);

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
    return 'UserLikesDto(userId: $userId, userName: $userName, userPhoto: $userPhoto, fullname: $fullname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLikesDtoImpl &&
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

  /// Create a copy of UserLikesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLikesDtoImplCopyWith<_$UserLikesDtoImpl> get copyWith =>
      __$$UserLikesDtoImplCopyWithImpl<_$UserLikesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLikesDtoImplToJson(
      this,
    );
  }
}

abstract class _UserLikesDto implements UserLikesDto {
  const factory _UserLikesDto(
      {final String? userId,
      final String? userName,
      final String? userPhoto,
      final String? fullname}) = _$UserLikesDtoImpl;

  factory _UserLikesDto.fromJson(Map<String, dynamic> json) =
      _$UserLikesDtoImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get userPhoto;
  @override
  String? get fullname;

  /// Create a copy of UserLikesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLikesDtoImplCopyWith<_$UserLikesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
