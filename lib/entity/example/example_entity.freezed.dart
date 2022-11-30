// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'example_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExampleEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleEntityCopyWith<ExampleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleEntityCopyWith<$Res> {
  factory $ExampleEntityCopyWith(
          ExampleEntity value, $Res Function(ExampleEntity) then) =
      _$ExampleEntityCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ExampleEntityCopyWithImpl<$Res>
    implements $ExampleEntityCopyWith<$Res> {
  _$ExampleEntityCopyWithImpl(this._value, this._then);

  final ExampleEntity _value;
  // ignore: unused_field
  final $Res Function(ExampleEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ExampleEntityCopyWith<$Res>
    implements $ExampleEntityCopyWith<$Res> {
  factory _$$_ExampleEntityCopyWith(
          _$_ExampleEntity value, $Res Function(_$_ExampleEntity) then) =
      __$$_ExampleEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_ExampleEntityCopyWithImpl<$Res>
    extends _$ExampleEntityCopyWithImpl<$Res>
    implements _$$_ExampleEntityCopyWith<$Res> {
  __$$_ExampleEntityCopyWithImpl(
      _$_ExampleEntity _value, $Res Function(_$_ExampleEntity) _then)
      : super(_value, (v) => _then(v as _$_ExampleEntity));

  @override
  _$_ExampleEntity get _value => super._value as _$_ExampleEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ExampleEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExampleEntity extends _ExampleEntity {
  const _$_ExampleEntity({required this.id, required this.name}) : super._();

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ExampleEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ExampleEntityCopyWith<_$_ExampleEntity> get copyWith =>
      __$$_ExampleEntityCopyWithImpl<_$_ExampleEntity>(this, _$identity);
}

abstract class _ExampleEntity extends ExampleEntity {
  const factory _ExampleEntity(
      {required final int id, required final String name}) = _$_ExampleEntity;
  const _ExampleEntity._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ExampleEntityCopyWith<_$_ExampleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
