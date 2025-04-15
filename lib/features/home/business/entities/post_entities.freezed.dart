// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostEntities _$PostEntitiesFromJson(Map<String, dynamic> json) {
  return _PostEntities.fromJson(json);
}

/// @nodoc
mixin _$PostEntities {
  String? get title => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  List<CommentEntities>? get comments => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String get datePublished => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  bool get postFavorite => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  bool get postLike => throw _privateConstructorUsedError;
  int? get postLikeCount => throw _privateConstructorUsedError;
  int get postView => throw _privateConstructorUsedError;
  List<UserFavoriteEntities>? get userFavorite =>
      throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get userImage => throw _privateConstructorUsedError;
  List<UserLikesEntities>? get userLikes => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  List<dynamic>? get userViews => throw _privateConstructorUsedError;

  /// Serializes this PostEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostEntitiesCopyWith<PostEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntitiesCopyWith<$Res> {
  factory $PostEntitiesCopyWith(
          PostEntities value, $Res Function(PostEntities) then) =
      _$PostEntitiesCopyWithImpl<$Res, PostEntities>;
  @useResult
  $Res call(
      {String? title,
      int commentCount,
      List<CommentEntities>? comments,
      String? content,
      String datePublished,
      List<String>? images,
      bool postFavorite,
      int postId,
      bool postLike,
      int? postLikeCount,
      int postView,
      List<UserFavoriteEntities>? userFavorite,
      String userId,
      String? userImage,
      List<UserLikesEntities>? userLikes,
      String? userName,
      List<dynamic>? userViews});
}

/// @nodoc
class _$PostEntitiesCopyWithImpl<$Res, $Val extends PostEntities>
    implements $PostEntitiesCopyWith<$Res> {
  _$PostEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? commentCount = null,
    Object? comments = freezed,
    Object? content = freezed,
    Object? datePublished = null,
    Object? images = freezed,
    Object? postFavorite = null,
    Object? postId = null,
    Object? postLike = null,
    Object? postLikeCount = freezed,
    Object? postView = null,
    Object? userFavorite = freezed,
    Object? userId = null,
    Object? userImage = freezed,
    Object? userLikes = freezed,
    Object? userName = freezed,
    Object? userViews = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntities>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      datePublished: null == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      postFavorite: null == postFavorite
          ? _value.postFavorite
          : postFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      postLike: null == postLike
          ? _value.postLike
          : postLike // ignore: cast_nullable_to_non_nullable
              as bool,
      postLikeCount: freezed == postLikeCount
          ? _value.postLikeCount
          : postLikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      postView: null == postView
          ? _value.postView
          : postView // ignore: cast_nullable_to_non_nullable
              as int,
      userFavorite: freezed == userFavorite
          ? _value.userFavorite
          : userFavorite // ignore: cast_nullable_to_non_nullable
              as List<UserFavoriteEntities>?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userLikes: freezed == userLikes
          ? _value.userLikes
          : userLikes // ignore: cast_nullable_to_non_nullable
              as List<UserLikesEntities>?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userViews: freezed == userViews
          ? _value.userViews
          : userViews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostEntitiesImplCopyWith<$Res>
    implements $PostEntitiesCopyWith<$Res> {
  factory _$$PostEntitiesImplCopyWith(
          _$PostEntitiesImpl value, $Res Function(_$PostEntitiesImpl) then) =
      __$$PostEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      int commentCount,
      List<CommentEntities>? comments,
      String? content,
      String datePublished,
      List<String>? images,
      bool postFavorite,
      int postId,
      bool postLike,
      int? postLikeCount,
      int postView,
      List<UserFavoriteEntities>? userFavorite,
      String userId,
      String? userImage,
      List<UserLikesEntities>? userLikes,
      String? userName,
      List<dynamic>? userViews});
}

/// @nodoc
class __$$PostEntitiesImplCopyWithImpl<$Res>
    extends _$PostEntitiesCopyWithImpl<$Res, _$PostEntitiesImpl>
    implements _$$PostEntitiesImplCopyWith<$Res> {
  __$$PostEntitiesImplCopyWithImpl(
      _$PostEntitiesImpl _value, $Res Function(_$PostEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? commentCount = null,
    Object? comments = freezed,
    Object? content = freezed,
    Object? datePublished = null,
    Object? images = freezed,
    Object? postFavorite = null,
    Object? postId = null,
    Object? postLike = null,
    Object? postLikeCount = freezed,
    Object? postView = null,
    Object? userFavorite = freezed,
    Object? userId = null,
    Object? userImage = freezed,
    Object? userLikes = freezed,
    Object? userName = freezed,
    Object? userViews = freezed,
  }) {
    return _then(_$PostEntitiesImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntities>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      datePublished: null == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      postFavorite: null == postFavorite
          ? _value.postFavorite
          : postFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      postLike: null == postLike
          ? _value.postLike
          : postLike // ignore: cast_nullable_to_non_nullable
              as bool,
      postLikeCount: freezed == postLikeCount
          ? _value.postLikeCount
          : postLikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      postView: null == postView
          ? _value.postView
          : postView // ignore: cast_nullable_to_non_nullable
              as int,
      userFavorite: freezed == userFavorite
          ? _value._userFavorite
          : userFavorite // ignore: cast_nullable_to_non_nullable
              as List<UserFavoriteEntities>?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userLikes: freezed == userLikes
          ? _value._userLikes
          : userLikes // ignore: cast_nullable_to_non_nullable
              as List<UserLikesEntities>?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userViews: freezed == userViews
          ? _value._userViews
          : userViews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostEntitiesImpl implements _PostEntities {
  const _$PostEntitiesImpl(
      {this.title,
      required this.commentCount,
      final List<CommentEntities>? comments,
      this.content,
      required this.datePublished,
      final List<String>? images,
      required this.postFavorite,
      required this.postId,
      required this.postLike,
      this.postLikeCount,
      required this.postView,
      final List<UserFavoriteEntities>? userFavorite,
      required this.userId,
      this.userImage,
      final List<UserLikesEntities>? userLikes,
      this.userName,
      final List<dynamic>? userViews})
      : _comments = comments,
        _images = images,
        _userFavorite = userFavorite,
        _userLikes = userLikes,
        _userViews = userViews;

  factory _$PostEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostEntitiesImplFromJson(json);

  @override
  final String? title;
  @override
  final int commentCount;
  final List<CommentEntities>? _comments;
  @override
  List<CommentEntities>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? content;
  @override
  final String datePublished;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool postFavorite;
  @override
  final int postId;
  @override
  final bool postLike;
  @override
  final int? postLikeCount;
  @override
  final int postView;
  final List<UserFavoriteEntities>? _userFavorite;
  @override
  List<UserFavoriteEntities>? get userFavorite {
    final value = _userFavorite;
    if (value == null) return null;
    if (_userFavorite is EqualUnmodifiableListView) return _userFavorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String userId;
  @override
  final String? userImage;
  final List<UserLikesEntities>? _userLikes;
  @override
  List<UserLikesEntities>? get userLikes {
    final value = _userLikes;
    if (value == null) return null;
    if (_userLikes is EqualUnmodifiableListView) return _userLikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? userName;
  final List<dynamic>? _userViews;
  @override
  List<dynamic>? get userViews {
    final value = _userViews;
    if (value == null) return null;
    if (_userViews is EqualUnmodifiableListView) return _userViews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostEntities(title: $title, commentCount: $commentCount, comments: $comments, content: $content, datePublished: $datePublished, images: $images, postFavorite: $postFavorite, postId: $postId, postLike: $postLike, postLikeCount: $postLikeCount, postView: $postView, userFavorite: $userFavorite, userId: $userId, userImage: $userImage, userLikes: $userLikes, userName: $userName, userViews: $userViews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEntitiesImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.datePublished, datePublished) ||
                other.datePublished == datePublished) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.postFavorite, postFavorite) ||
                other.postFavorite == postFavorite) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postLike, postLike) ||
                other.postLike == postLike) &&
            (identical(other.postLikeCount, postLikeCount) ||
                other.postLikeCount == postLikeCount) &&
            (identical(other.postView, postView) ||
                other.postView == postView) &&
            const DeepCollectionEquality()
                .equals(other._userFavorite, _userFavorite) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            const DeepCollectionEquality()
                .equals(other._userLikes, _userLikes) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            const DeepCollectionEquality()
                .equals(other._userViews, _userViews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      commentCount,
      const DeepCollectionEquality().hash(_comments),
      content,
      datePublished,
      const DeepCollectionEquality().hash(_images),
      postFavorite,
      postId,
      postLike,
      postLikeCount,
      postView,
      const DeepCollectionEquality().hash(_userFavorite),
      userId,
      userImage,
      const DeepCollectionEquality().hash(_userLikes),
      userName,
      const DeepCollectionEquality().hash(_userViews));

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEntitiesImplCopyWith<_$PostEntitiesImpl> get copyWith =>
      __$$PostEntitiesImplCopyWithImpl<_$PostEntitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostEntitiesImplToJson(
      this,
    );
  }
}

abstract class _PostEntities implements PostEntities {
  const factory _PostEntities(
      {final String? title,
      required final int commentCount,
      final List<CommentEntities>? comments,
      final String? content,
      required final String datePublished,
      final List<String>? images,
      required final bool postFavorite,
      required final int postId,
      required final bool postLike,
      final int? postLikeCount,
      required final int postView,
      final List<UserFavoriteEntities>? userFavorite,
      required final String userId,
      final String? userImage,
      final List<UserLikesEntities>? userLikes,
      final String? userName,
      final List<dynamic>? userViews}) = _$PostEntitiesImpl;

  factory _PostEntities.fromJson(Map<String, dynamic> json) =
      _$PostEntitiesImpl.fromJson;

  @override
  String? get title;
  @override
  int get commentCount;
  @override
  List<CommentEntities>? get comments;
  @override
  String? get content;
  @override
  String get datePublished;
  @override
  List<String>? get images;
  @override
  bool get postFavorite;
  @override
  int get postId;
  @override
  bool get postLike;
  @override
  int? get postLikeCount;
  @override
  int get postView;
  @override
  List<UserFavoriteEntities>? get userFavorite;
  @override
  String get userId;
  @override
  String? get userImage;
  @override
  List<UserLikesEntities>? get userLikes;
  @override
  String? get userName;
  @override
  List<dynamic>? get userViews;

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostEntitiesImplCopyWith<_$PostEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
