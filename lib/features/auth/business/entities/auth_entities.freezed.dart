// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthEntities _$AuthEntitiesFromJson(Map<String, dynamic> json) {
  return _LoginEntities.fromJson(json);
}

/// @nodoc
mixin _$AuthEntities {
  String? get data => throw _privateConstructorUsedError;
  List<String>? get errors => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  /// Serializes this AuthEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthEntitiesCopyWith<AuthEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEntitiesCopyWith<$Res> {
  factory $AuthEntitiesCopyWith(
          AuthEntities value, $Res Function(AuthEntities) then) =
      _$AuthEntitiesCopyWithImpl<$Res, AuthEntities>;
  @useResult
  $Res call({String? data, List<String>? errors, int? statusCode});
}

/// @nodoc
class _$AuthEntitiesCopyWithImpl<$Res, $Val extends AuthEntities>
    implements $AuthEntitiesCopyWith<$Res> {
  _$AuthEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errors = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginEntitiesImplCopyWith<$Res>
    implements $AuthEntitiesCopyWith<$Res> {
  factory _$$LoginEntitiesImplCopyWith(
          _$LoginEntitiesImpl value, $Res Function(_$LoginEntitiesImpl) then) =
      __$$LoginEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? data, List<String>? errors, int? statusCode});
}

/// @nodoc
class __$$LoginEntitiesImplCopyWithImpl<$Res>
    extends _$AuthEntitiesCopyWithImpl<$Res, _$LoginEntitiesImpl>
    implements _$$LoginEntitiesImplCopyWith<$Res> {
  __$$LoginEntitiesImplCopyWithImpl(
      _$LoginEntitiesImpl _value, $Res Function(_$LoginEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errors = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$LoginEntitiesImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginEntitiesImpl implements _LoginEntities {
  const _$LoginEntitiesImpl(
      {this.data, final List<String>? errors, this.statusCode})
      : _errors = errors;

  factory _$LoginEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginEntitiesImplFromJson(json);

  @override
  final String? data;
  final List<String>? _errors;
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? statusCode;

  @override
  String toString() {
    return 'AuthEntities(data: $data, errors: $errors, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEntitiesImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data,
      const DeepCollectionEquality().hash(_errors), statusCode);

  /// Create a copy of AuthEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEntitiesImplCopyWith<_$LoginEntitiesImpl> get copyWith =>
      __$$LoginEntitiesImplCopyWithImpl<_$LoginEntitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginEntitiesImplToJson(
      this,
    );
  }
}

abstract class _LoginEntities implements AuthEntities {
  const factory _LoginEntities(
      {final String? data,
      final List<String>? errors,
      final int? statusCode}) = _$LoginEntitiesImpl;

  factory _LoginEntities.fromJson(Map<String, dynamic> json) =
      _$LoginEntitiesImpl.fromJson;

  @override
  String? get data;
  @override
  List<String>? get errors;
  @override
  int? get statusCode;

  /// Create a copy of AuthEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEntitiesImplCopyWith<_$LoginEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
