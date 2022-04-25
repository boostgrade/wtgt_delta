// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dio_error_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DioErrorResponse _$DioErrorResponseFromJson(Map<String, dynamic> json) {
  return _DioErrorResponse.fromJson(json);
}

/// @nodoc
class _$DioErrorResponseTearOff {
  const _$DioErrorResponseTearOff();

  _DioErrorResponse call({required int? code, required String? message}) {
    return _DioErrorResponse(
      code: code,
      message: message,
    );
  }

  DioErrorResponse fromJson(Map<String, Object?> json) {
    return DioErrorResponse.fromJson(json);
  }
}

/// @nodoc
const $DioErrorResponse = _$DioErrorResponseTearOff();

/// @nodoc
mixin _$DioErrorResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DioErrorResponseCopyWith<DioErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DioErrorResponseCopyWith<$Res> {
  factory $DioErrorResponseCopyWith(
          DioErrorResponse value, $Res Function(DioErrorResponse) then) =
      _$DioErrorResponseCopyWithImpl<$Res>;
  $Res call({int? code, String? message});
}

/// @nodoc
class _$DioErrorResponseCopyWithImpl<$Res>
    implements $DioErrorResponseCopyWith<$Res> {
  _$DioErrorResponseCopyWithImpl(this._value, this._then);

  final DioErrorResponse _value;
  // ignore: unused_field
  final $Res Function(DioErrorResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DioErrorResponseCopyWith<$Res>
    implements $DioErrorResponseCopyWith<$Res> {
  factory _$DioErrorResponseCopyWith(
          _DioErrorResponse value, $Res Function(_DioErrorResponse) then) =
      __$DioErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? message});
}

/// @nodoc
class __$DioErrorResponseCopyWithImpl<$Res>
    extends _$DioErrorResponseCopyWithImpl<$Res>
    implements _$DioErrorResponseCopyWith<$Res> {
  __$DioErrorResponseCopyWithImpl(
      _DioErrorResponse _value, $Res Function(_DioErrorResponse) _then)
      : super(_value, (v) => _then(v as _DioErrorResponse));

  @override
  _DioErrorResponse get _value => super._value as _DioErrorResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_DioErrorResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DioErrorResponse implements _DioErrorResponse {
  const _$_DioErrorResponse({required this.code, required this.message});

  factory _$_DioErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DioErrorResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'DioErrorResponse(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DioErrorResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  _$DioErrorResponseCopyWith<_DioErrorResponse> get copyWith =>
      __$DioErrorResponseCopyWithImpl<_DioErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DioErrorResponseToJson(this);
  }
}

abstract class _DioErrorResponse implements DioErrorResponse {
  const factory _DioErrorResponse(
      {required int? code, required String? message}) = _$_DioErrorResponse;

  factory _DioErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_DioErrorResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$DioErrorResponseCopyWith<_DioErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
