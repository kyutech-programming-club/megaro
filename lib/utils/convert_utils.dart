import 'package:flutter_template/data/sql/example_sql.dart';
import 'package:flutter_template/documents/example_document/example_document.dart';
import 'package:flutter_template/entity/example/example_entity.dart';

/// ドメイン層のモデルからインフラ層のモデルへの変換
/// インフラ層のモデルからドメイン層のモデルへの変換
class ConvertUtils {
  /// singleTon
  ConvertUtils._();

  static final instance = ConvertUtils._();

  /// Example -> ExampleDocument
  ExampleDocument toExampleDoc(
      {required ExampleEntity exampleEntity,
      required int id}) {
    return ExampleDocument(
      id: id,
      name: exampleEntity.name,
    );
  }

  /// ExampleDocument -> Example
  ExampleEntity toExample({required ExampleDocument exampleDoc}) {
    final example = ExampleEntity(
      id: exampleDoc.id,
      name: exampleDoc.name,
    );
    return example;
  }

  /// ExampleEntity -> ExampleSqlDocument
  Example toExampleSqlDoc({required ExampleEntity exampleEntity}) {
    return Example(
      id: exampleEntity.id,
      name: exampleEntity.name,
    );
  }

  /// ExampleSqlDocument -> ExampleEntity
  ExampleEntity toExampleFromSql({required Example exampleSqlDocument}) {
    final example = ExampleEntity(
      id: exampleSqlDocument.id,
      name: exampleSqlDocument.name,
    );
    return example;
  }
}
