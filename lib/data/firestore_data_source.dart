import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/documents/example_document/example_document.dart';
import 'package:flutter_template/documents/location_document/location_document.dart';
import 'package:flutter_template/providers/infrastructure_providers.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

final firestoreProvider = Provider<FirestoreDataSource>((ref) =>
    FirestoreDataSource(
        ref: ref, collectionRef: ref.watch(examplesCollectionRefProvider)));

class FirestoreDataSource {
  FirestoreDataSource({required this.ref, required this.collectionRef});

  final Ref ref;
  final CollectionReference<Map<String, dynamic>> collectionRef;

  ///
  /// Example
  ///

  /// 投稿追加
  Future<void> insertExample(ExampleDocument exampleDocument) async {
    await collectionRef.add(exampleDocument.toJson());
  }

  Future<void> deleteExample(int exampleId) async {
    final col =
        await collectionRef.where('exampleId', isEqualTo: exampleId).get();
    await collectionRef.doc(col.docs.first.id).delete();
  }

  ///
  /// location
  ///

  Future<void> insertLocation(LocationDocument locationDocument) async {
    await collectionRef.add(locationDocument.toJson());
  }

  Stream<List<LocationDocument>> fetchNearLocation() {
    final db = FirebaseFirestore.instance;
    final geo = Geoflutterfire();
    GeoFirePoint center =
        geo.point(latitude: 35, longitude: 135);

    var collectionReference = db.collection('shop');

    double radius = 10000;
    String field = 'position';

    return geo
        .collection(collectionRef: collectionReference)
        .within(center: center, radius: radius, field: field, strictMode: true)
        .map((event) =>
            event.map((e) => LocationDocument.fromJson(e.data()!)).toList());
  }
}
