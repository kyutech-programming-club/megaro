// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingEntity {
  String get title => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingEntityCopyWith<SettingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEntityCopyWith<$Res> {
  factory $SettingEntityCopyWith(
          SettingEntity value, $Res Function(SettingEntity) then) =
      _$SettingEntityCopyWithImpl<$Res>;
  $Res call({String title, IconData icon, String desc, String route});
}

/// @nodoc
class _$SettingEntityCopyWithImpl<$Res>
    implements $SettingEntityCopyWith<$Res> {
  _$SettingEntityCopyWithImpl(this._value, this._then);

  final SettingEntity _value;
  // ignore: unused_field
  final $Res Function(SettingEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? icon = freezed,
    Object? desc = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingEntityCopyWith<$Res>
    implements $SettingEntityCopyWith<$Res> {
  factory _$$_SettingEntityCopyWith(
          _$_SettingEntity value, $Res Function(_$_SettingEntity) then) =
      __$$_SettingEntityCopyWithImpl<$Res>;
  @override
  $Res call({String title, IconData icon, String desc, String route});
}

/// @nodoc
class __$$_SettingEntityCopyWithImpl<$Res>
    extends _$SettingEntityCopyWithImpl<$Res>
    implements _$$_SettingEntityCopyWith<$Res> {
  __$$_SettingEntityCopyWithImpl(
      _$_SettingEntity _value, $Res Function(_$_SettingEntity) _then)
      : super(_value, (v) => _then(v as _$_SettingEntity));

  @override
  _$_SettingEntity get _value => super._value as _$_SettingEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? icon = freezed,
    Object? desc = freezed,
    Object? route = freezed,
  }) {
    return _then(_$_SettingEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SettingEntity implements _SettingEntity {
  const _$_SettingEntity(
      {required this.title,
      required this.icon,
      required this.desc,
      required this.route});

  @override
  final String title;
  @override
  final IconData icon;
  @override
  final String desc;
  @override
  final String route;

  @override
  String toString() {
    return 'SettingEntity(title: $title, icon: $icon, desc: $desc, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingEntity &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.route, route));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(route));

  @JsonKey(ignore: true)
  @override
  _$$_SettingEntityCopyWith<_$_SettingEntity> get copyWith =>
      __$$_SettingEntityCopyWithImpl<_$_SettingEntity>(this, _$identity);
}

abstract class _SettingEntity implements SettingEntity {
  const factory _SettingEntity(
      {required final String title,
      required final IconData icon,
      required final String desc,
      required final String route}) = _$_SettingEntity;

  @override
  String get title;
  @override
  IconData get icon;
  @override
  String get desc;
  @override
  String get route;
  @override
  @JsonKey(ignore: true)
  _$$_SettingEntityCopyWith<_$_SettingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
