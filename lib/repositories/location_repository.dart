import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/firestore_data_source.dart';
import 'package:flutter_template/entity/location/location_entity.dart';

import '../documents/location_document/location_document.dart';

final locationRepositoryProvider =
    Provider<LocationRepository>((ref) => LocationRepository(ref));

class LocationRepository {
  LocationRepository(this.ref);

  final Ref ref;

  /// 投稿新規追加
  Future<void> addLocation(LocationEntity locationEntity) async {
    final firestore = ref.read(firestoreProvider);
    final locationDoc = await LocationDocument.createDocument(locationEntity, ref);
    await firestore.insertLocation(locationDoc);
  }

  /// タスクのストリームを取得
  // Stream<List<LocationEntity>> getLocationStream() {
  //   final sql = ref.read(sqlProvider);
  //   return sql.getLocationStream().map((event) => event
  //       .map((e) => ConvertUtils.instance.toLocationFromSql(locationSqlDocument: e))
  //       .toList());
  // }
}
