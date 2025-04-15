// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentEntities _$CommentEntitiesFromJson(Map<String, dynamic> json) {
  return _CommentEntities.fromJson(json);
}

/// @nodoc
mixin _$CommentEntities {
  int? get postCommentId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userImage => throw _privateConstructorUsedError;
  String? get dateCommented => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this CommentEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentEntitiesCopyWith<CommentEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntitiesCopyWith<$Res> {
  factory $CommentEntitiesCopyWith(
          CommentEntities value, $Res Function(CommentEntities) then) =
      _$CommentEntitiesCopyWithImpl<$Res, CommentEntities>;
  @useResult
  $Res call(
      {int? postCommentId,
      String? userId,
      String? userName,
      String? userImage,
      String? dateCommented,
      String? comment});
}

/// @nodoc
class _$CommentEntitiesCopyWithImpl<$Res, $Val extends CommentEntities>
    implements $CommentEntitiesCopyWith<$Res> {
  _$CommentEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postCommentId = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userImage = freezed,
    Object? dateCommented = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      postCommentId: freezed == postCommentId
          ? _value.postCommentId
          : postCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCommented: freezed == dateCommented
          ? _value.dateCommented
          : dateCommented // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentEntitiesImplCopyWith<$Res>
    implements $CommentEntitiesCopyWith<$Res> {
  factory _$$CommentEntitiesImplCopyWith(_$CommentEntitiesImpl value,
          $Res Function(_$CommentEntitiesImpl) then) =
      __$$CommentEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? postCommentId,
      String? userId,
      String? userName,
      String? userImage,
      String? dateCommented,
      String? comment});
}

/// @nodoc
class __$$CommentEntitiesImplCopyWithImpl<$Res>
    extends _$CommentEntitiesCopyWithImpl<$Res, _$CommentEntitiesImpl>
    implements _$$CommentEntitiesImplCopyWith<$Res> {
  __$$CommentEntitiesImplCopyWithImpl(
      _$CommentEntitiesImpl _value, $Res Function(_$CommentEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postCommentId = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userImage = freezed,
    Object? dateCommented = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$CommentEntitiesImpl(
      postCommentId: freezed == postCommentId
          ? _value.postCommentId
          : postCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCommented: freezed == dateCommented
          ? _value.dateCommented
          : dateCommented // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentEntitiesImpl
    with DiagnosticableTreeMixin
    implements _CommentEntities {
  const _$CommentEntitiesImpl(
      {this.postCommentId,
      this.userId,
      this.userName,
      this.userImage,
      this.dateCommented,
      this.comment});

  factory _$CommentEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentEntitiesImplFromJson(json);

  @override
  final int? postCommentId;
  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? userImage;
  @override
  final String? dateCommented;
  @override
  final String? comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentEntities(postCommentId: $postCommentId, userId: $userId, userName: $userName, userImage: $userImage, dateCommented: $dateCommented, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentEntities'))
      ..add(DiagnosticsProperty('postCommentId', postCommentId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('userImage', userImage))
      ..add(DiagnosticsProperty('dateCommented', dateCommented))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEntitiesImpl &&
            (identical(other.postCommentId, postCommentId) ||
                other.postCommentId == postCommentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.dateCommented, dateCommented) ||
                other.dateCommented == dateCommented) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postCommentId, userId, userName,
      userImage, dateCommented, comment);

  /// Create a copy of CommentEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEntitiesImplCopyWith<_$CommentEntitiesImpl> get copyWith =>
      __$$CommentEntitiesImplCopyWithImpl<_$CommentEntitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentEntitiesImplToJson(
      this,
    );
  }
}

abstract class _CommentEntities implements CommentEntities {
  const factory _CommentEntities(
      {final int? postCommentId,
      final String? userId,
      final String? userName,
      final String? userImage,
      final String? dateCommented,
      final String? comment}) = _$CommentEntitiesImpl;

  factory _CommentEntities.fromJson(Map<String, dynamic> json) =
      _$CommentEntitiesImpl.fromJson;

  @override
  int? get postCommentId;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get userImage;
  @override
  String? get dateCommented;
  @override
  String? get comment;

  /// Create a copy of CommentEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentEntitiesImplCopyWith<_$CommentEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
