import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/firestore_data_source.dart';
import 'package:flutter_template/entity/location/location_entity.dart';
import 'package:location/location.dart';

import '../documents/location_document/location_document.dart';

final locationRepositoryProvider =
    Provider<LocationRepository>((ref) => LocationRepository(ref));

class LocationRepository {
  LocationRepository(this.ref);

  final Ref ref;

  /// 投稿新規追加
  Future<void> addLocation(LocationEntity locationEntity) async {
    final firestore = ref.read(firestoreProvider);
    final locationDoc =
        await LocationDocument.createDocument(locationEntity, ref);
    await firestore.insertLocation(locationDoc);
  }

  /// 近くのストリームを取得
  Stream<List<LocationEntity>> getNearLocationStream(LocationData locData) {
    final firestore = ref.read(firestoreProvider);
    return firestore.fetchNearLocation(locData).map(
          (event) => event.map((e) => LocationEntity.fromDoc(e)).toList(),
        );
  }

  /// 現在地のストリームを取得
  Stream<LocationData> getCurrentLocationStream() {
    final location = Location();
    // ignore: cascade_invocations
    // location.enableBackgroundMode(enable: true);
    return location.onLocationChanged;
  }
}
