import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/documents/example_document/example_document.dart';
import 'package:flutter_template/documents/location_document/location_document.dart';
import 'package:flutter_template/providers/domain_providers.dart';
import 'package:flutter_template/providers/infrastructure_providers.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

import '../documents/chat_document/chat_document.dart';

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
    final db = FirebaseFirestore.instance;
    final collectionReference = db.collection('shop');
    final positionJson = locationDocument.position.toJson();
    final locationJson = locationDocument.toJson();
    /// Todo
    await collectionReference.doc(locationDocument.name).set({
      "name": locationJson['name'],
      "battery": locationJson['battery'],
      "position": positionJson,
    });
  }

  Stream<List<LocationDocument>> fetchNearLocation() {
    final db = FirebaseFirestore.instance;
    final geo = Geoflutterfire();
    GeoFirePoint center = geo.point(latitude: 35, longitude: 135);

    var collectionReference = db.collection('shop');

    double radius = 10000;
    String field = 'position';

    return geo
        .collection(collectionRef: collectionReference)
        .within(center: center, radius: radius, field: field, strictMode: true)
        .map((event) =>
            event.map((e) => LocationDocument.fromJson(e.data()!)).toList());
  }

  ///
  /// chat
  ///
  Future<void> insertChat(ChatDocument chatDocument) async {
    final db = FirebaseFirestore.instance;
    final collectionReference = db.collection('chat').doc();
    await collectionReference.set(chatDocument.toJson());
  }

  Future<void> loadChat() async {
    final userToken = ref.read(tokenProvider);
    final db = FirebaseFirestore.instance;
    DateTime lastFetchTime = DateTime.now();

    /// cacheから一番古いチャットログを取る
    final lastTimeCol = await db
        .collection('chat')
        .orderBy('updateAt', descending: true)
        .where('myToken', isEqualTo: '$userToken')
        .limit(1)
        .get(const GetOptions(source: Source.cache));
    lastFetchTime = lastTimeCol.docs.first.data()['updateAt'].toDate();

    /// 一番古いチャットログからそれ以降のログをFirestoreから取る
    final collectionReferences = db
        .collection('chat')
        .where('myToken', isEqualTo: '$userToken')
        .orderBy('updateAt', descending: false)
        .startAfter([lastFetchTime]);
    await collectionReferences.get(const GetOptions(source: Source.server));
  }

  Stream<List<ChatDocument>> getStreamMyChat() {
    final userToken = ref.read(tokenProvider);
    final db = FirebaseFirestore.instance;

    final stream = db
        .collection('chat')
        .orderBy('updateAt', descending: true)
        .where('myToken', isEqualTo: '$userToken')
        .limit(20)
        .snapshots();
    return stream.map((event) => event.docs
        .map((doc) => doc.data())
        .map((data) => ChatDocument.fromJson(data))
        .toList());
  }

  Stream<List<ChatDocument>> getStreamOppChat() {
    final userToken = ref.read(tokenProvider);
    final db = FirebaseFirestore.instance;

    final stream = db
        .collection('chat')
        .orderBy('updateAt', descending: true)
        .where('oppToken', isEqualTo: '$userToken')
        .limit(20)
        .snapshots();
    return stream.map((event) => event.docs
        .map((doc) => doc.data())
        .map((data) => ChatDocument.fromJson(data))
        .toList());
  }

  Stream<List<ChatDocument>> getStreamMyOppChat(String oppToken) {
    final userToken = ref.read(tokenProvider);
    final db = FirebaseFirestore.instance;

    final stream = db
        .collection('chat')
        .orderBy('updateAt', descending: true)
        .where('myToken', isEqualTo: userToken)
        .where('oppToken', isEqualTo: oppToken)
        .limit(20)
        .snapshots();
    return stream.map((event) => event.docs
        .map((doc) => doc.data())
        .map((data) => ChatDocument.fromJson(data))
        .toList());
  }

  Stream<List<ChatDocument>> getStreamOppMyChat(String oppToken) {
    final userToken = ref.read(tokenProvider);
    final db = FirebaseFirestore.instance;

    final stream = db
        .collection('chat')
        .orderBy('updateAt', descending: true)
        .where('oppToken', isEqualTo: '$userToken')
        .where('myToken', isEqualTo: oppToken)
        .limit(20)
        .snapshots();
    return stream.map((event) => event.docs
        .map((doc) => doc.data())
        .map((data) => ChatDocument.fromJson(data))
        .toList());
  }
}
