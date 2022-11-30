import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/firestore_data_source.dart';
import 'package:flutter_template/data/preferences_data_source.dart';
import 'package:flutter_template/data/sql_data_source.dart';
import 'package:flutter_template/documents/example_document/example_document.dart';
import 'package:flutter_template/entity/example/example_entity.dart';
import 'package:flutter_template/repositories/setting_repository.dart';
import 'package:flutter_template/utils/convert_utils.dart';

final exampleRepositoryProvider =
    Provider<ExampleRepository>((ref) => ExampleRepository(ref));

class ExampleRepository {
  ExampleRepository(this.ref);

  final Ref ref;

  /// 投稿新規追加
  Future<void> addExample(ExampleEntity exampleEntity) async {
    final sql = ref.read(sqlProvider);
    final firestore = ref.read(firestoreProvider);
    final exampleSqlDoc = ConvertUtils.instance.toExampleSqlDoc(exampleEntity: exampleEntity);
    final exampleDoc = await ExampleDocument.createDocument(exampleEntity, ref);
    await sql.insertExample(exampleSqlDoc);
    await firestore.insertExample(exampleDoc);
    await ref.read(settingRepositoryProvider).updateTotalExampleId(PrefKey.example.name);
  }

  Future<void> finishExample(ExampleEntity exampleEntity) async {
    final sql = ref.read(sqlProvider);
    final firestore = ref.read(firestoreProvider);
    final exampleSqlDoc = ConvertUtils.instance
        .toExampleSqlDoc(exampleEntity: exampleEntity);
    await sql.removeExample(exampleSqlDoc);
    await firestore.deleteExample(exampleEntity.id);
  }

  /// タスクのストリームを取得
  Stream<List<ExampleEntity>> getExampleStream() {
    final sql = ref.read(sqlProvider);
    return sql.getExampleStream().map((event) => event
        .map((e) => ConvertUtils.instance.toExampleFromSql(exampleSqlDocument: e))
        .toList());
  }
}
