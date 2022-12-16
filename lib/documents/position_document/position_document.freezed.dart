// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'position_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PositionDocument _$PositionDocumentFromJson(Map<String, dynamic> json) {
  return _PositionDocument.fromJson(json);
}

/// @nodoc
mixin _$PositionDocument {
// ignore: invalid_annotation_target
  @JsonKey(name: 'geohash')
  String get geoHash => throw _privateConstructorUsedError;
  @GeoPointConverter()
  @JsonKey(name: 'geopoint')
  GeoPoint get geoPoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionDocumentCopyWith<PositionDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDocumentCopyWith<$Res> {
  factory $PositionDocumentCopyWith(
          PositionDocument value, $Res Function(PositionDocument) then) =
      _$PositionDocumentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'geohash') String geoHash,
      @GeoPointConverter() @JsonKey(name: 'geopoint') GeoPoint geoPoint});
}

/// @nodoc
class _$PositionDocumentCopyWithImpl<$Res>
    implements $PositionDocumentCopyWith<$Res> {
  _$PositionDocumentCopyWithImpl(this._value, this._then);

  final PositionDocument _value;
  // ignore: unused_field
  final $Res Function(PositionDocument) _then;

  @override
  $Res call({
    Object? geoHash = freezed,
    Object? geoPoint = freezed,
  }) {
    return _then(_value.copyWith(
      geoHash: geoHash == freezed
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
      geoPoint: geoPoint == freezed
          ? _value.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
abstract class _$$_PositionDocumentCopyWith<$Res>
    implements $PositionDocumentCopyWith<$Res> {
  factory _$$_PositionDocumentCopyWith(
          _$_PositionDocument value, $Res Function(_$_PositionDocument) then) =
      __$$_PositionDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'geohash') String geoHash,
      @GeoPointConverter() @JsonKey(name: 'geopoint') GeoPoint geoPoint});
}

/// @nodoc
class __$$_PositionDocumentCopyWithImpl<$Res>
    extends _$PositionDocumentCopyWithImpl<$Res>
    implements _$$_PositionDocumentCopyWith<$Res> {
  __$$_PositionDocumentCopyWithImpl(
      _$_PositionDocument _value, $Res Function(_$_PositionDocument) _then)
      : super(_value, (v) => _then(v as _$_PositionDocument));

  @override
  _$_PositionDocument get _value => super._value as _$_PositionDocument;

  @override
  $Res call({
    Object? geoHash = freezed,
    Object? geoPoint = freezed,
  }) {
    return _then(_$_PositionDocument(
      geoHash: geoHash == freezed
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
      geoPoint: geoPoint == freezed
          ? _value.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PositionDocument extends _PositionDocument {
  const _$_PositionDocument(
      {@JsonKey(name: 'geohash') required this.geoHash,
      @GeoPointConverter() @JsonKey(name: 'geopoint') required this.geoPoint})
      : super._();

  factory _$_PositionDocument.fromJson(Map<String, dynamic> json) =>
      _$$_PositionDocumentFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'geohash')
  final String geoHash;
  @override
  @GeoPointConverter()
  @JsonKey(name: 'geopoint')
  final GeoPoint geoPoint;

  @override
  String toString() {
    return 'PositionDocument(geoHash: $geoHash, geoPoint: $geoPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionDocument &&
            const DeepCollectionEquality().equals(other.geoHash, geoHash) &&
            const DeepCollectionEquality().equals(other.geoPoint, geoPoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(geoHash),
      const DeepCollectionEquality().hash(geoPoint));

  @JsonKey(ignore: true)
  @override
  _$$_PositionDocumentCopyWith<_$_PositionDocument> get copyWith =>
      __$$_PositionDocumentCopyWithImpl<_$_PositionDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionDocumentToJson(
      this,
    );
  }
}

abstract class _PositionDocument extends PositionDocument {
  const factory _PositionDocument(
      {@JsonKey(name: 'geohash')
          required final String geoHash,
      @GeoPointConverter()
      @JsonKey(name: 'geopoint')
          required final GeoPoint geoPoint}) = _$_PositionDocument;
  const _PositionDocument._() : super._();

  factory _PositionDocument.fromJson(Map<String, dynamic> json) =
      _$_PositionDocument.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'geohash')
  String get geoHash;
  @override
  @GeoPointConverter()
  @JsonKey(name: 'geopoint')
  GeoPoint get geoPoint;
  @override
  @JsonKey(ignore: true)
  _$$_PositionDocumentCopyWith<_$_PositionDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
