// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatsDto _$ChatsDtoFromJson(Map<String, dynamic> json) {
  return _ChatsDto.fromJson(json);
}

/// @nodoc
mixin _$ChatsDto {
  String get sendUserId => throw _privateConstructorUsedError;
  String? get sendUserName => throw _privateConstructorUsedError;
  String? get sendUserImage => throw _privateConstructorUsedError;
  int get chatId => throw _privateConstructorUsedError;
  String get receiveUserId => throw _privateConstructorUsedError;
  String? get receiveUserName => throw _privateConstructorUsedError;
  String? get receiveUserImage => throw _privateConstructorUsedError;

  /// Serializes this ChatsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatsDtoCopyWith<ChatsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsDtoCopyWith<$Res> {
  factory $ChatsDtoCopyWith(ChatsDto value, $Res Function(ChatsDto) then) =
      _$ChatsDtoCopyWithImpl<$Res, ChatsDto>;
  @useResult
  $Res call(
      {String sendUserId,
      String? sendUserName,
      String? sendUserImage,
      int chatId,
      String receiveUserId,
      String? receiveUserName,
      String? receiveUserImage});
}

/// @nodoc
class _$ChatsDtoCopyWithImpl<$Res, $Val extends ChatsDto>
    implements $ChatsDtoCopyWith<$Res> {
  _$ChatsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendUserId = null,
    Object? sendUserName = freezed,
    Object? sendUserImage = freezed,
    Object? chatId = null,
    Object? receiveUserId = null,
    Object? receiveUserName = freezed,
    Object? receiveUserImage = freezed,
  }) {
    return _then(_value.copyWith(
      sendUserId: null == sendUserId
          ? _value.sendUserId
          : sendUserId // ignore: cast_nullable_to_non_nullable
              as String,
      sendUserName: freezed == sendUserName
          ? _value.sendUserName
          : sendUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      sendUserImage: freezed == sendUserImage
          ? _value.sendUserImage
          : sendUserImage // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      receiveUserId: null == receiveUserId
          ? _value.receiveUserId
          : receiveUserId // ignore: cast_nullable_to_non_nullable
              as String,
      receiveUserName: freezed == receiveUserName
          ? _value.receiveUserName
          : receiveUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveUserImage: freezed == receiveUserImage
          ? _value.receiveUserImage
          : receiveUserImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatsDtoImplCopyWith<$Res>
    implements $ChatsDtoCopyWith<$Res> {
  factory _$$ChatsDtoImplCopyWith(
          _$ChatsDtoImpl value, $Res Function(_$ChatsDtoImpl) then) =
      __$$ChatsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sendUserId,
      String? sendUserName,
      String? sendUserImage,
      int chatId,
      String receiveUserId,
      String? receiveUserName,
      String? receiveUserImage});
}

/// @nodoc
class __$$ChatsDtoImplCopyWithImpl<$Res>
    extends _$ChatsDtoCopyWithImpl<$Res, _$ChatsDtoImpl>
    implements _$$ChatsDtoImplCopyWith<$Res> {
  __$$ChatsDtoImplCopyWithImpl(
      _$ChatsDtoImpl _value, $Res Function(_$ChatsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendUserId = null,
    Object? sendUserName = freezed,
    Object? sendUserImage = freezed,
    Object? chatId = null,
    Object? receiveUserId = null,
    Object? receiveUserName = freezed,
    Object? receiveUserImage = freezed,
  }) {
    return _then(_$ChatsDtoImpl(
      sendUserId: null == sendUserId
          ? _value.sendUserId
          : sendUserId // ignore: cast_nullable_to_non_nullable
              as String,
      sendUserName: freezed == sendUserName
          ? _value.sendUserName
          : sendUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      sendUserImage: freezed == sendUserImage
          ? _value.sendUserImage
          : sendUserImage // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      receiveUserId: null == receiveUserId
          ? _value.receiveUserId
          : receiveUserId // ignore: cast_nullable_to_non_nullable
              as String,
      receiveUserName: freezed == receiveUserName
          ? _value.receiveUserName
          : receiveUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveUserImage: freezed == receiveUserImage
          ? _value.receiveUserImage
          : receiveUserImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatsDtoImpl implements _ChatsDto {
  const _$ChatsDtoImpl(
      {required this.sendUserId,
      this.sendUserName,
      this.sendUserImage,
      required this.chatId,
      required this.receiveUserId,
      this.receiveUserName,
      this.receiveUserImage});

  factory _$ChatsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatsDtoImplFromJson(json);

  @override
  final String sendUserId;
  @override
  final String? sendUserName;
  @override
  final String? sendUserImage;
  @override
  final int chatId;
  @override
  final String receiveUserId;
  @override
  final String? receiveUserName;
  @override
  final String? receiveUserImage;

  @override
  String toString() {
    return 'ChatsDto(sendUserId: $sendUserId, sendUserName: $sendUserName, sendUserImage: $sendUserImage, chatId: $chatId, receiveUserId: $receiveUserId, receiveUserName: $receiveUserName, receiveUserImage: $receiveUserImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsDtoImpl &&
            (identical(other.sendUserId, sendUserId) ||
                other.sendUserId == sendUserId) &&
            (identical(other.sendUserName, sendUserName) ||
                other.sendUserName == sendUserName) &&
            (identical(other.sendUserImage, sendUserImage) ||
                other.sendUserImage == sendUserImage) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.receiveUserId, receiveUserId) ||
                other.receiveUserId == receiveUserId) &&
            (identical(other.receiveUserName, receiveUserName) ||
                other.receiveUserName == receiveUserName) &&
            (identical(other.receiveUserImage, receiveUserImage) ||
                other.receiveUserImage == receiveUserImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sendUserId, sendUserName,
      sendUserImage, chatId, receiveUserId, receiveUserName, receiveUserImage);

  /// Create a copy of ChatsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsDtoImplCopyWith<_$ChatsDtoImpl> get copyWith =>
      __$$ChatsDtoImplCopyWithImpl<_$ChatsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatsDtoImplToJson(
      this,
    );
  }
}

abstract class _ChatsDto implements ChatsDto {
  const factory _ChatsDto(
      {required final String sendUserId,
      final String? sendUserName,
      final String? sendUserImage,
      required final int chatId,
      required final String receiveUserId,
      final String? receiveUserName,
      final String? receiveUserImage}) = _$ChatsDtoImpl;

  factory _ChatsDto.fromJson(Map<String, dynamic> json) =
      _$ChatsDtoImpl.fromJson;

  @override
  String get sendUserId;
  @override
  String? get sendUserName;
  @override
  String? get sendUserImage;
  @override
  int get chatId;
  @override
  String get receiveUserId;
  @override
  String? get receiveUserName;
  @override
  String? get receiveUserImage;

  /// Create a copy of ChatsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatsDtoImplCopyWith<_$ChatsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
