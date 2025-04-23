// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_short_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserShortInfoDTO _$UserShortInfoDTOFromJson(Map<String, dynamic> json) {
  return _UserShortInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$UserShortInfoDTO {
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userPhoto => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  /// Serializes this UserShortInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserShortInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserShortInfoDTOCopyWith<UserShortInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserShortInfoDTOCopyWith<$Res> {
  factory $UserShortInfoDTOCopyWith(
          UserShortInfoDTO value, $Res Function(UserShortInfoDTO) then) =
      _$UserShortInfoDTOCopyWithImpl<$Res, UserShortInfoDTO>;
  @useResult
  $Res call(
      {String userId, String userName, String userPhoto, String fullName});
}

/// @nodoc
class _$UserShortInfoDTOCopyWithImpl<$Res, $Val extends UserShortInfoDTO>
    implements $UserShortInfoDTOCopyWith<$Res> {
  _$UserShortInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserShortInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? userPhoto = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoto: null == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserShortInfoDTOImplCopyWith<$Res>
    implements $UserShortInfoDTOCopyWith<$Res> {
  factory _$$UserShortInfoDTOImplCopyWith(_$UserShortInfoDTOImpl value,
          $Res Function(_$UserShortInfoDTOImpl) then) =
      __$$UserShortInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, String userName, String userPhoto, String fullName});
}

/// @nodoc
class __$$UserShortInfoDTOImplCopyWithImpl<$Res>
    extends _$UserShortInfoDTOCopyWithImpl<$Res, _$UserShortInfoDTOImpl>
    implements _$$UserShortInfoDTOImplCopyWith<$Res> {
  __$$UserShortInfoDTOImplCopyWithImpl(_$UserShortInfoDTOImpl _value,
      $Res Function(_$UserShortInfoDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserShortInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? userPhoto = null,
    Object? fullName = null,
  }) {
    return _then(_$UserShortInfoDTOImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoto: null == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserShortInfoDTOImpl implements _UserShortInfoDTO {
  _$UserShortInfoDTOImpl(
      {required this.userId,
      required this.userName,
      required this.userPhoto,
      required this.fullName});

  factory _$UserShortInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserShortInfoDTOImplFromJson(json);

  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userPhoto;
  @override
  final String fullName;

  @override
  String toString() {
    return 'UserShortInfoDTO(userId: $userId, userName: $userName, userPhoto: $userPhoto, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserShortInfoDTOImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhoto, userPhoto) ||
                other.userPhoto == userPhoto) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userName, userPhoto, fullName);

  /// Create a copy of UserShortInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserShortInfoDTOImplCopyWith<_$UserShortInfoDTOImpl> get copyWith =>
      __$$UserShortInfoDTOImplCopyWithImpl<_$UserShortInfoDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserShortInfoDTOImplToJson(
      this,
    );
  }
}

abstract class _UserShortInfoDTO implements UserShortInfoDTO {
  factory _UserShortInfoDTO(
      {required final String userId,
      required final String userName,
      required final String userPhoto,
      required final String fullName}) = _$UserShortInfoDTOImpl;

  factory _UserShortInfoDTO.fromJson(Map<String, dynamic> json) =
      _$UserShortInfoDTOImpl.fromJson;

  @override
  String get userId;
  @override
  String get userName;
  @override
  String get userPhoto;
  @override
  String get fullName;

  /// Create a copy of UserShortInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserShortInfoDTOImplCopyWith<_$UserShortInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
