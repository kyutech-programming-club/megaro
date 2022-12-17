// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageEntity {
  String get text => throw _privateConstructorUsedError;
  bool get isMy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
          MessageEntity value, $Res Function(MessageEntity) then) =
      _$MessageEntityCopyWithImpl<$Res>;
  $Res call({String text, bool isMy});
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._value, this._then);

  final MessageEntity _value;
  // ignore: unused_field
  final $Res Function(MessageEntity) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? isMy = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isMy: isMy == freezed
          ? _value.isMy
          : isMy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageEntityCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$_MessageEntityCopyWith(
          _$_MessageEntity value, $Res Function(_$_MessageEntity) then) =
      __$$_MessageEntityCopyWithImpl<$Res>;
  @override
  $Res call({String text, bool isMy});
}

/// @nodoc
class __$$_MessageEntityCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res>
    implements _$$_MessageEntityCopyWith<$Res> {
  __$$_MessageEntityCopyWithImpl(
      _$_MessageEntity _value, $Res Function(_$_MessageEntity) _then)
      : super(_value, (v) => _then(v as _$_MessageEntity));

  @override
  _$_MessageEntity get _value => super._value as _$_MessageEntity;

  @override
  $Res call({
    Object? text = freezed,
    Object? isMy = freezed,
  }) {
    return _then(_$_MessageEntity(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isMy: isMy == freezed
          ? _value.isMy
          : isMy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MessageEntity extends _MessageEntity {
  const _$_MessageEntity({required this.text, required this.isMy}) : super._();

  @override
  final String text;
  @override
  final bool isMy;

  @override
  String toString() {
    return 'MessageEntity(text: $text, isMy: $isMy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageEntity &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.isMy, isMy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(isMy));

  @JsonKey(ignore: true)
  @override
  _$$_MessageEntityCopyWith<_$_MessageEntity> get copyWith =>
      __$$_MessageEntityCopyWithImpl<_$_MessageEntity>(this, _$identity);
}

abstract class _MessageEntity extends MessageEntity {
  const factory _MessageEntity(
      {required final String text,
      required final bool isMy}) = _$_MessageEntity;
  const _MessageEntity._() : super._();

  @override
  String get text;
  @override
  bool get isMy;
  @override
  @JsonKey(ignore: true)
  _$$_MessageEntityCopyWith<_$_MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
