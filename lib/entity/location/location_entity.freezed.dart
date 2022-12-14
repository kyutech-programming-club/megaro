// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEntity {
  String get name => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;
  int get battery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationEntityCopyWith<LocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEntityCopyWith<$Res> {
  factory $LocationEntityCopyWith(
          LocationEntity value, $Res Function(LocationEntity) then) =
      _$LocationEntityCopyWithImpl<$Res>;
  $Res call({String name, String hash, double lat, double long, int battery});
}

/// @nodoc
class _$LocationEntityCopyWithImpl<$Res>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._value, this._then);

  final LocationEntity _value;
  // ignore: unused_field
  final $Res Function(LocationEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? hash = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? battery = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      battery: battery == freezed
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationEntityCopyWith<$Res>
    implements $LocationEntityCopyWith<$Res> {
  factory _$$_LocationEntityCopyWith(
          _$_LocationEntity value, $Res Function(_$_LocationEntity) then) =
      __$$_LocationEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String hash, double lat, double long, int battery});
}

/// @nodoc
class __$$_LocationEntityCopyWithImpl<$Res>
    extends _$LocationEntityCopyWithImpl<$Res>
    implements _$$_LocationEntityCopyWith<$Res> {
  __$$_LocationEntityCopyWithImpl(
      _$_LocationEntity _value, $Res Function(_$_LocationEntity) _then)
      : super(_value, (v) => _then(v as _$_LocationEntity));

  @override
  _$_LocationEntity get _value => super._value as _$_LocationEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? hash = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? battery = freezed,
  }) {
    return _then(_$_LocationEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      battery: battery == freezed
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LocationEntity extends _LocationEntity {
  const _$_LocationEntity(
      {required this.name,
      required this.hash,
      required this.lat,
      required this.long,
      required this.battery})
      : super._();

  @override
  final String name;
  @override
  final String hash;
  @override
  final double lat;
  @override
  final double long;
  @override
  final int battery;

  @override
  String toString() {
    return 'LocationEntity(name: $name, hash: $hash, lat: $lat, long: $long, battery: $battery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationEntity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.hash, hash) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long) &&
            const DeepCollectionEquality().equals(other.battery, battery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(hash),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long),
      const DeepCollectionEquality().hash(battery));

  @JsonKey(ignore: true)
  @override
  _$$_LocationEntityCopyWith<_$_LocationEntity> get copyWith =>
      __$$_LocationEntityCopyWithImpl<_$_LocationEntity>(this, _$identity);
}

abstract class _LocationEntity extends LocationEntity {
  const factory _LocationEntity(
      {required final String name,
      required final String hash,
      required final double lat,
      required final double long,
      required final int battery}) = _$_LocationEntity;
  const _LocationEntity._() : super._();

  @override
  String get name;
  @override
  String get hash;
  @override
  double get lat;
  @override
  double get long;
  @override
  int get battery;
  @override
  @JsonKey(ignore: true)
  _$$_LocationEntityCopyWith<_$_LocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
