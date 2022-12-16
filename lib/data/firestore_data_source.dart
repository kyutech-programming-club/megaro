import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/documents/example_document/example_document.dart';
import 'package:flutter_template/documents/location_document/location_document.dart';
import 'package:flutter_template/providers/infrastructure_providers.dart';

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
}
