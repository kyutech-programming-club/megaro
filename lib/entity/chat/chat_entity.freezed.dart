// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEntity {
  String get myToken => throw _privateConstructorUsedError;
  String get opponentToken => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get unread => throw _privateConstructorUsedError;
  DateTime get updateAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEntityCopyWith<ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEntityCopyWith<$Res> {
  factory $ChatEntityCopyWith(
          ChatEntity value, $Res Function(ChatEntity) then) =
      _$ChatEntityCopyWithImpl<$Res>;
  $Res call(
      {String myToken,
      String opponentToken,
      String message,
      int unread,
      DateTime updateAt});
}

/// @nodoc
class _$ChatEntityCopyWithImpl<$Res> implements $ChatEntityCopyWith<$Res> {
  _$ChatEntityCopyWithImpl(this._value, this._then);

  final ChatEntity _value;
  // ignore: unused_field
  final $Res Function(ChatEntity) _then;

  @override
  $Res call({
    Object? myToken = freezed,
    Object? opponentToken = freezed,
    Object? message = freezed,
    Object? unread = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_value.copyWith(
      myToken: myToken == freezed
          ? _value.myToken
          : myToken // ignore: cast_nullable_to_non_nullable
              as String,
      opponentToken: opponentToken == freezed
          ? _value.opponentToken
          : opponentToken // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      updateAt: updateAt == freezed
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatEntityCopyWith<$Res>
    implements $ChatEntityCopyWith<$Res> {
  factory _$$_ChatEntityCopyWith(
          _$_ChatEntity value, $Res Function(_$_ChatEntity) then) =
      __$$_ChatEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String myToken,
      String opponentToken,
      String message,
      int unread,
      DateTime updateAt});
}

/// @nodoc
class __$$_ChatEntityCopyWithImpl<$Res> extends _$ChatEntityCopyWithImpl<$Res>
    implements _$$_ChatEntityCopyWith<$Res> {
  __$$_ChatEntityCopyWithImpl(
      _$_ChatEntity _value, $Res Function(_$_ChatEntity) _then)
      : super(_value, (v) => _then(v as _$_ChatEntity));

  @override
  _$_ChatEntity get _value => super._value as _$_ChatEntity;

  @override
  $Res call({
    Object? myToken = freezed,
    Object? opponentToken = freezed,
    Object? message = freezed,
    Object? unread = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$_ChatEntity(
      myToken: myToken == freezed
          ? _value.myToken
          : myToken // ignore: cast_nullable_to_non_nullable
              as String,
      opponentToken: opponentToken == freezed
          ? _value.opponentToken
          : opponentToken // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      updateAt: updateAt == freezed
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ChatEntity extends _ChatEntity {
  const _$_ChatEntity(
      {required this.myToken,
      required this.opponentToken,
      required this.message,
      required this.unread,
      required this.updateAt})
      : super._();

  @override
  final String myToken;
  @override
  final String opponentToken;
  @override
  final String message;
  @override
  final int unread;
  @override
  final DateTime updateAt;

  @override
  String toString() {
    return 'ChatEntity(myToken: $myToken, opponentToken: $opponentToken, message: $message, unread: $unread, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatEntity &&
            const DeepCollectionEquality().equals(other.myToken, myToken) &&
            const DeepCollectionEquality()
                .equals(other.opponentToken, opponentToken) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.unread, unread) &&
            const DeepCollectionEquality().equals(other.updateAt, updateAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myToken),
      const DeepCollectionEquality().hash(opponentToken),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(unread),
      const DeepCollectionEquality().hash(updateAt));

  @JsonKey(ignore: true)
  @override
  _$$_ChatEntityCopyWith<_$_ChatEntity> get copyWith =>
      __$$_ChatEntityCopyWithImpl<_$_ChatEntity>(this, _$identity);
}

abstract class _ChatEntity extends ChatEntity {
  const factory _ChatEntity(
      {required final String myToken,
      required final String opponentToken,
      required final String message,
      required final int unread,
      required final DateTime updateAt}) = _$_ChatEntity;
  const _ChatEntity._() : super._();

  @override
  String get myToken;
  @override
  String get opponentToken;
  @override
  String get message;
  @override
  int get unread;
  @override
  DateTime get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$_ChatEntityCopyWith<_$_ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
