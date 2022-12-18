import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'example_sql.g.dart';

class Examples extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
}

@DriftDatabase(tables: [Examples])
class ExamplesDatabase extends _$ExamplesDatabase {
  ExamplesDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<Example>> fetchExampleStream() {
    return (select(examples)..orderBy([(u) => OrderingTerm(expression: u.name, mode: OrderingMode.asc)])).watch();
  }

  Future<Example?> fetchExample(String name) {
    return (select(examples)..where((tbl) => tbl.name.equals(name))).getSingleOrNull();
  }

  Future<int> insert(ExamplesCompanion companion) {
    return into(examples).insert(companion);
  }

  Future<void> remove(Example xxxSqlDoc) {
    return (delete(examples)..where((tbl) => tbl.id.equals(xxxSqlDoc.id))).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'xxx_db.sqlite'));
    return NativeDatabase(file);
  });
}