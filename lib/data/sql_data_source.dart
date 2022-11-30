import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/sql/example_sql.dart';
import 'package:flutter_template/providers/domain_providers.dart';

final sqlProvider =
    Provider<SqlDataSource>((ref) => SqlDataSource(ref));

class SqlDataSource {
  SqlDataSource(this.ref);

  final Ref ref;

  ///
  /// Example
  ///

  /// 投稿新規追加
  Future<void> insertExample(Example exampleSqlDoc) async {
    final database = ref.read(exampleDatabaseProvider);
    await database.insert(exampleSqlDoc.toCompanion(true));
  }

  Future<void> removeExample(Example exampleSqlDoc) async {
    final database = ref.read(exampleDatabaseProvider);
    await database.remove(exampleSqlDoc);
  }

  /// ストリームを取得
  Stream<List<Example>> getExampleStream() {
    final database = ref.watch(exampleDatabaseProvider);
    final stream = database.fetchExampleStream();
    return stream;
  }
}
