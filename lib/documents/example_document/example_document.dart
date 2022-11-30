import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/entity/example/example_entity.dart';

part 'example_document.freezed.dart';

part 'example_document.g.dart';

@freezed
class ExampleDocument with _$ExampleDocument {
  const ExampleDocument._();

  const factory ExampleDocument({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'userId') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _ExampleDocument;

  factory ExampleDocument.fromJson(Map<String, dynamic> json) =>
      _$ExampleDocumentFromJson(json);

  static Future<ExampleDocument> createDocument(ExampleEntity exampleEntity, Ref ref) async {
    return ExampleDocument(
      id: exampleEntity.id,
      name: exampleEntity.name,
    );
  }
}
