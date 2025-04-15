// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_post_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponsePostEntities _$ResponsePostEntitiesFromJson(Map<String, dynamic> json) {
  return _ResponsePostEntities.fromJson(json);
}

/// @nodoc
mixin _$ResponsePostEntities {
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get totalRecord => throw _privateConstructorUsedError;
  List<PostEntities> get data => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  /// Serializes this ResponsePostEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponsePostEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponsePostEntitiesCopyWith<ResponsePostEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePostEntitiesCopyWith<$Res> {
  factory $ResponsePostEntitiesCopyWith(ResponsePostEntities value,
          $Res Function(ResponsePostEntities) then) =
      _$ResponsePostEntitiesCopyWithImpl<$Res, ResponsePostEntities>;
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      int totalPage,
      int totalRecord,
      List<PostEntities> data,
      List<String> errors,
      int statusCode});
}

/// @nodoc
class _$ResponsePostEntitiesCopyWithImpl<$Res,
        $Val extends ResponsePostEntities>
    implements $ResponsePostEntitiesCopyWith<$Res> {
  _$ResponsePostEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponsePostEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPage = null,
    Object? totalRecord = null,
    Object? data = null,
    Object? errors = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecord: null == totalRecord
          ? _value.totalRecord
          : totalRecord // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostEntities>,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponsePostEntitiesImplCopyWith<$Res>
    implements $ResponsePostEntitiesCopyWith<$Res> {
  factory _$$ResponsePostEntitiesImplCopyWith(_$ResponsePostEntitiesImpl value,
          $Res Function(_$ResponsePostEntitiesImpl) then) =
      __$$ResponsePostEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      int totalPage,
      int totalRecord,
      List<PostEntities> data,
      List<String> errors,
      int statusCode});
}

/// @nodoc
class __$$ResponsePostEntitiesImplCopyWithImpl<$Res>
    extends _$ResponsePostEntitiesCopyWithImpl<$Res, _$ResponsePostEntitiesImpl>
    implements _$$ResponsePostEntitiesImplCopyWith<$Res> {
  __$$ResponsePostEntitiesImplCopyWithImpl(_$ResponsePostEntitiesImpl _value,
      $Res Function(_$ResponsePostEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponsePostEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPage = null,
    Object? totalRecord = null,
    Object? data = null,
    Object? errors = null,
    Object? statusCode = null,
  }) {
    return _then(_$ResponsePostEntitiesImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecord: null == totalRecord
          ? _value.totalRecord
          : totalRecord // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostEntities>,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsePostEntitiesImpl implements _ResponsePostEntities {
  const _$ResponsePostEntitiesImpl(
      {required this.pageNumber,
      required this.pageSize,
      required this.totalPage,
      required this.totalRecord,
      required final List<PostEntities> data,
      required final List<String> errors,
      required this.statusCode})
      : _data = data,
        _errors = errors;

  factory _$ResponsePostEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsePostEntitiesImplFromJson(json);

  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final int totalPage;
  @override
  final int totalRecord;
  final List<PostEntities> _data;
  @override
  List<PostEntities> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<String> _errors;
  @override
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  final int statusCode;

  @override
  String toString() {
    return 'ResponsePostEntities(pageNumber: $pageNumber, pageSize: $pageSize, totalPage: $totalPage, totalRecord: $totalRecord, data: $data, errors: $errors, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePostEntitiesImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalRecord, totalRecord) ||
                other.totalRecord == totalRecord) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageNumber,
      pageSize,
      totalPage,
      totalRecord,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_errors),
      statusCode);

  /// Create a copy of ResponsePostEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsePostEntitiesImplCopyWith<_$ResponsePostEntitiesImpl>
      get copyWith =>
          __$$ResponsePostEntitiesImplCopyWithImpl<_$ResponsePostEntitiesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePostEntitiesImplToJson(
      this,
    );
  }
}

abstract class _ResponsePostEntities implements ResponsePostEntities {
  const factory _ResponsePostEntities(
      {required final int pageNumber,
      required final int pageSize,
      required final int totalPage,
      required final int totalRecord,
      required final List<PostEntities> data,
      required final List<String> errors,
      required final int statusCode}) = _$ResponsePostEntitiesImpl;

  factory _ResponsePostEntities.fromJson(Map<String, dynamic> json) =
      _$ResponsePostEntitiesImpl.fromJson;

  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  int get totalPage;
  @override
  int get totalRecord;
  @override
  List<PostEntities> get data;
  @override
  List<String> get errors;
  @override
  int get statusCode;

  /// Create a copy of ResponsePostEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponsePostEntitiesImplCopyWith<_$ResponsePostEntitiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
