import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_entity.freezed.dart';

@freezed
class ExampleEntity with _$ExampleEntity {
  const ExampleEntity._();

  const factory ExampleEntity({
    required int id,
    required String name,
  }) = _ExampleEntity;

  static Future<ExampleEntity> createEntity(WidgetRef ref) async {
    return ExampleEntity(
      id: 0,
      name: 'name',
    );
  }
}