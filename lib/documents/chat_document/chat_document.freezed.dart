// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatDocument _$ChatDocumentFromJson(Map<String, dynamic> json) {
  return _ChatDocument.fromJson(json);
}

/// @nodoc
mixin _$ChatDocument {
// ignore: invalid_annotation_target
  @JsonKey(name: 'myToken')
  String get myToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'opponentToken')
  String get opponentToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread')
  int get unread => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'updateAt')
  DateTime get updateAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDocumentCopyWith<ChatDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDocumentCopyWith<$Res> {
  factory $ChatDocumentCopyWith(
          ChatDocument value, $Res Function(ChatDocument) then) =
      _$ChatDocumentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'myToken') String myToken,
      @JsonKey(name: 'opponentToken') String opponentToken,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'unread') int unread,
      @TimestampConverter() @JsonKey(name: 'updateAt') DateTime updateAt});
}

/// @nodoc
class _$ChatDocumentCopyWithImpl<$Res> implements $ChatDocumentCopyWith<$Res> {
  _$ChatDocumentCopyWithImpl(this._value, this._then);

  final ChatDocument _value;
  // ignore: unused_field
  final $Res Function(ChatDocument) _then;

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
abstract class _$$_ChatDocumentCopyWith<$Res>
    implements $ChatDocumentCopyWith<$Res> {
  factory _$$_ChatDocumentCopyWith(
          _$_ChatDocument value, $Res Function(_$_ChatDocument) then) =
      __$$_ChatDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'myToken') String myToken,
      @JsonKey(name: 'opponentToken') String opponentToken,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'unread') int unread,
      @TimestampConverter() @JsonKey(name: 'updateAt') DateTime updateAt});
}

/// @nodoc
class __$$_ChatDocumentCopyWithImpl<$Res>
    extends _$ChatDocumentCopyWithImpl<$Res>
    implements _$$_ChatDocumentCopyWith<$Res> {
  __$$_ChatDocumentCopyWithImpl(
      _$_ChatDocument _value, $Res Function(_$_ChatDocument) _then)
      : super(_value, (v) => _then(v as _$_ChatDocument));

  @override
  _$_ChatDocument get _value => super._value as _$_ChatDocument;

  @override
  $Res call({
    Object? myToken = freezed,
    Object? opponentToken = freezed,
    Object? message = freezed,
    Object? unread = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$_ChatDocument(
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
@JsonSerializable()
class _$_ChatDocument extends _ChatDocument {
  const _$_ChatDocument(
      {@JsonKey(name: 'myToken') required this.myToken,
      @JsonKey(name: 'opponentToken') required this.opponentToken,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'unread') required this.unread,
      @TimestampConverter() @JsonKey(name: 'updateAt') required this.updateAt})
      : super._();

  factory _$_ChatDocument.fromJson(Map<String, dynamic> json) =>
      _$$_ChatDocumentFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'myToken')
  final String myToken;
  @override
  @JsonKey(name: 'opponentToken')
  final String opponentToken;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'unread')
  final int unread;
  @override
  @TimestampConverter()
  @JsonKey(name: 'updateAt')
  final DateTime updateAt;

  @override
  String toString() {
    return 'ChatDocument(myToken: $myToken, opponentToken: $opponentToken, message: $message, unread: $unread, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatDocument &&
            const DeepCollectionEquality().equals(other.myToken, myToken) &&
            const DeepCollectionEquality()
                .equals(other.opponentToken, opponentToken) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.unread, unread) &&
            const DeepCollectionEquality().equals(other.updateAt, updateAt));
  }

  @JsonKey(ignore: true)
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
  _$$_ChatDocumentCopyWith<_$_ChatDocument> get copyWith =>
      __$$_ChatDocumentCopyWithImpl<_$_ChatDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatDocumentToJson(
      this,
    );
  }
}

abstract class _ChatDocument extends ChatDocument {
  const factory _ChatDocument(
      {@JsonKey(name: 'myToken')
          required final String myToken,
      @JsonKey(name: 'opponentToken')
          required final String opponentToken,
      @JsonKey(name: 'message')
          required final String message,
      @JsonKey(name: 'unread')
          required final int unread,
      @TimestampConverter()
      @JsonKey(name: 'updateAt')
          required final DateTime updateAt}) = _$_ChatDocument;
  const _ChatDocument._() : super._();

  factory _ChatDocument.fromJson(Map<String, dynamic> json) =
      _$_ChatDocument.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'myToken')
  String get myToken;
  @override
  @JsonKey(name: 'opponentToken')
  String get opponentToken;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'unread')
  int get unread;
  @override
  @TimestampConverter()
  @JsonKey(name: 'updateAt')
  DateTime get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$_ChatDocumentCopyWith<_$_ChatDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
