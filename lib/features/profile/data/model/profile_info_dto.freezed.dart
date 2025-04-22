// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileInfoDTO _$ProfileInfoDTOFromJson(Map<String, dynamic> json) {
  return _ProfileInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$ProfileInfoDTO {
  String? get image => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  int? get postCount => throw _privateConstructorUsedError;
  int? get subscribersCount => throw _privateConstructorUsedError;
  int? get subscriptionsCount => throw _privateConstructorUsedError;

  /// Serializes this ProfileInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileInfoDTOCopyWith<ProfileInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoDTOCopyWith<$Res> {
  factory $ProfileInfoDTOCopyWith(
          ProfileInfoDTO value, $Res Function(ProfileInfoDTO) then) =
      _$ProfileInfoDTOCopyWithImpl<$Res, ProfileInfoDTO>;
  @useResult
  $Res call(
      {String? image,
      String? userId,
      String? userName,
      String? about,
      int? postCount,
      int? subscribersCount,
      int? subscriptionsCount});
}

/// @nodoc
class _$ProfileInfoDTOCopyWithImpl<$Res, $Val extends ProfileInfoDTO>
    implements $ProfileInfoDTOCopyWith<$Res> {
  _$ProfileInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? about = freezed,
    Object? postCount = freezed,
    Object? subscribersCount = freezed,
    Object? subscriptionsCount = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      postCount: freezed == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriptionsCount: freezed == subscriptionsCount
          ? _value.subscriptionsCount
          : subscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileInfoDTOImplCopyWith<$Res>
    implements $ProfileInfoDTOCopyWith<$Res> {
  factory _$$ProfileInfoDTOImplCopyWith(_$ProfileInfoDTOImpl value,
          $Res Function(_$ProfileInfoDTOImpl) then) =
      __$$ProfileInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? image,
      String? userId,
      String? userName,
      String? about,
      int? postCount,
      int? subscribersCount,
      int? subscriptionsCount});
}

/// @nodoc
class __$$ProfileInfoDTOImplCopyWithImpl<$Res>
    extends _$ProfileInfoDTOCopyWithImpl<$Res, _$ProfileInfoDTOImpl>
    implements _$$ProfileInfoDTOImplCopyWith<$Res> {
  __$$ProfileInfoDTOImplCopyWithImpl(
      _$ProfileInfoDTOImpl _value, $Res Function(_$ProfileInfoDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? about = freezed,
    Object? postCount = freezed,
    Object? subscribersCount = freezed,
    Object? subscriptionsCount = freezed,
  }) {
    return _then(_$ProfileInfoDTOImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      postCount: freezed == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriptionsCount: freezed == subscriptionsCount
          ? _value.subscriptionsCount
          : subscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileInfoDTOImpl implements _ProfileInfoDTO {
  const _$ProfileInfoDTOImpl(
      {this.image,
      this.userId,
      this.userName,
      this.about,
      this.postCount,
      this.subscribersCount,
      this.subscriptionsCount});

  factory _$ProfileInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileInfoDTOImplFromJson(json);

  @override
  final String? image;
  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? about;
  @override
  final int? postCount;
  @override
  final int? subscribersCount;
  @override
  final int? subscriptionsCount;

  @override
  String toString() {
    return 'ProfileInfoDTO(image: $image, userId: $userId, userName: $userName, about: $about, postCount: $postCount, subscribersCount: $subscribersCount, subscriptionsCount: $subscriptionsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInfoDTOImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount) &&
            (identical(other.subscriptionsCount, subscriptionsCount) ||
                other.subscriptionsCount == subscriptionsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, userId, userName, about,
      postCount, subscribersCount, subscriptionsCount);

  /// Create a copy of ProfileInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInfoDTOImplCopyWith<_$ProfileInfoDTOImpl> get copyWith =>
      __$$ProfileInfoDTOImplCopyWithImpl<_$ProfileInfoDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileInfoDTOImplToJson(
      this,
    );
  }
}

abstract class _ProfileInfoDTO implements ProfileInfoDTO {
  const factory _ProfileInfoDTO(
      {final String? image,
      final String? userId,
      final String? userName,
      final String? about,
      final int? postCount,
      final int? subscribersCount,
      final int? subscriptionsCount}) = _$ProfileInfoDTOImpl;

  factory _ProfileInfoDTO.fromJson(Map<String, dynamic> json) =
      _$ProfileInfoDTOImpl.fromJson;

  @override
  String? get image;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get about;
  @override
  int? get postCount;
  @override
  int? get subscribersCount;
  @override
  int? get subscriptionsCount;

  /// Create a copy of ProfileInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileInfoDTOImplCopyWith<_$ProfileInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
