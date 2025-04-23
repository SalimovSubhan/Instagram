// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowDTO _$FollowDTOFromJson(Map<String, dynamic> json) {
  return _FollowDTO.fromJson(json);
}

/// @nodoc
mixin _$FollowDTO {
  int get id => throw _privateConstructorUsedError;
  UserShortInfoDTO get userShortInfo => throw _privateConstructorUsedError;

  /// Serializes this FollowDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowDTOCopyWith<FollowDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowDTOCopyWith<$Res> {
  factory $FollowDTOCopyWith(FollowDTO value, $Res Function(FollowDTO) then) =
      _$FollowDTOCopyWithImpl<$Res, FollowDTO>;
  @useResult
  $Res call({int id, UserShortInfoDTO userShortInfo});

  $UserShortInfoDTOCopyWith<$Res> get userShortInfo;
}

/// @nodoc
class _$FollowDTOCopyWithImpl<$Res, $Val extends FollowDTO>
    implements $FollowDTOCopyWith<$Res> {
  _$FollowDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userShortInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userShortInfo: null == userShortInfo
          ? _value.userShortInfo
          : userShortInfo // ignore: cast_nullable_to_non_nullable
              as UserShortInfoDTO,
    ) as $Val);
  }

  /// Create a copy of FollowDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserShortInfoDTOCopyWith<$Res> get userShortInfo {
    return $UserShortInfoDTOCopyWith<$Res>(_value.userShortInfo, (value) {
      return _then(_value.copyWith(userShortInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowDTOImplCopyWith<$Res>
    implements $FollowDTOCopyWith<$Res> {
  factory _$$FollowDTOImplCopyWith(
          _$FollowDTOImpl value, $Res Function(_$FollowDTOImpl) then) =
      __$$FollowDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, UserShortInfoDTO userShortInfo});

  @override
  $UserShortInfoDTOCopyWith<$Res> get userShortInfo;
}

/// @nodoc
class __$$FollowDTOImplCopyWithImpl<$Res>
    extends _$FollowDTOCopyWithImpl<$Res, _$FollowDTOImpl>
    implements _$$FollowDTOImplCopyWith<$Res> {
  __$$FollowDTOImplCopyWithImpl(
      _$FollowDTOImpl _value, $Res Function(_$FollowDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userShortInfo = null,
  }) {
    return _then(_$FollowDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userShortInfo: null == userShortInfo
          ? _value.userShortInfo
          : userShortInfo // ignore: cast_nullable_to_non_nullable
              as UserShortInfoDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowDTOImpl implements _FollowDTO {
  _$FollowDTOImpl({required this.id, required this.userShortInfo});

  factory _$FollowDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowDTOImplFromJson(json);

  @override
  final int id;
  @override
  final UserShortInfoDTO userShortInfo;

  @override
  String toString() {
    return 'FollowDTO(id: $id, userShortInfo: $userShortInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userShortInfo, userShortInfo) ||
                other.userShortInfo == userShortInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userShortInfo);

  /// Create a copy of FollowDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowDTOImplCopyWith<_$FollowDTOImpl> get copyWith =>
      __$$FollowDTOImplCopyWithImpl<_$FollowDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowDTOImplToJson(
      this,
    );
  }
}

abstract class _FollowDTO implements FollowDTO {
  factory _FollowDTO(
      {required final int id,
      required final UserShortInfoDTO userShortInfo}) = _$FollowDTOImpl;

  factory _FollowDTO.fromJson(Map<String, dynamic> json) =
      _$FollowDTOImpl.fromJson;

  @override
  int get id;
  @override
  UserShortInfoDTO get userShortInfo;

  /// Create a copy of FollowDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowDTOImplCopyWith<_$FollowDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
