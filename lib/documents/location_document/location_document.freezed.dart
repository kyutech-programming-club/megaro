// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDocument _$LocationDocumentFromJson(Map<String, dynamic> json) {
  return _LocationDocument.fromJson(json);
}

/// @nodoc
mixin _$LocationDocument {
// ignore: invalid_annotation_target
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  PositionDocument get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDocumentCopyWith<LocationDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDocumentCopyWith<$Res> {
  factory $LocationDocumentCopyWith(
          LocationDocument value, $Res Function(LocationDocument) then) =
      _$LocationDocumentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'position') PositionDocument position});

  $PositionDocumentCopyWith<$Res> get position;
}

/// @nodoc
class _$LocationDocumentCopyWithImpl<$Res>
    implements $LocationDocumentCopyWith<$Res> {
  _$LocationDocumentCopyWithImpl(this._value, this._then);

  final LocationDocument _value;
  // ignore: unused_field
  final $Res Function(LocationDocument) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDocument,
    ));
  }

  @override
  $PositionDocumentCopyWith<$Res> get position {
    return $PositionDocumentCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocationDocumentCopyWith<$Res>
    implements $LocationDocumentCopyWith<$Res> {
  factory _$$_LocationDocumentCopyWith(
          _$_LocationDocument value, $Res Function(_$_LocationDocument) then) =
      __$$_LocationDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'position') PositionDocument position});

  @override
  $PositionDocumentCopyWith<$Res> get position;
}

/// @nodoc
class __$$_LocationDocumentCopyWithImpl<$Res>
    extends _$LocationDocumentCopyWithImpl<$Res>
    implements _$$_LocationDocumentCopyWith<$Res> {
  __$$_LocationDocumentCopyWithImpl(
      _$_LocationDocument _value, $Res Function(_$_LocationDocument) _then)
      : super(_value, (v) => _then(v as _$_LocationDocument));

  @override
  _$_LocationDocument get _value => super._value as _$_LocationDocument;

  @override
  $Res call({
    Object? name = freezed,
    Object? position = freezed,
  }) {
    return _then(_$_LocationDocument(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDocument,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDocument extends _LocationDocument {
  const _$_LocationDocument(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'position') required this.position})
      : super._();

  factory _$_LocationDocument.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDocumentFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'position')
  final PositionDocument position;

  @override
  String toString() {
    return 'LocationDocument(name: $name, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDocument &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_LocationDocumentCopyWith<_$_LocationDocument> get copyWith =>
      __$$_LocationDocumentCopyWithImpl<_$_LocationDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDocumentToJson(
      this,
    );
  }
}

abstract class _LocationDocument extends LocationDocument {
  const factory _LocationDocument(
      {@JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'position')
          required final PositionDocument position}) = _$_LocationDocument;
  const _LocationDocument._() : super._();

  factory _LocationDocument.fromJson(Map<String, dynamic> json) =
      _$_LocationDocument.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'position')
  PositionDocument get position;
  @override
  @JsonKey(ignore: true)
  _$$_LocationDocumentCopyWith<_$_LocationDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
