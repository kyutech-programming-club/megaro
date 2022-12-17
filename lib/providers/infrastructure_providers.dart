import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/entity/chat/chat_entity.dart';
import 'package:flutter_template/entity/example/example_entity.dart';
import 'package:flutter_template/entity/location/location_entity.dart';
import 'package:flutter_template/repositories/chat_repository.dart';
import 'package:flutter_template/repositories/example_repository.dart';
import 'package:flutter_template/repositories/location_repository.dart';
import 'package:location/location.dart';

/// Firestoreのインスタンスを保持するプロバイダ
final firebaseFirestoreProvider = Provider((_) => FirebaseFirestore.instance);

///コレクション名のプロバイダ
final examplesCollectionNameProvider = Provider((_) => 'examples');

///コレクションReferenceのプロバイダ
final examplesCollectionRefProvider =
Provider<CollectionReference<Map<String, dynamic>>>((ref) => ref
    .watch(firebaseFirestoreProvider)
    .collection(ref.watch(examplesCollectionNameProvider)));

///
/// Location
///

/// 近くの位置情報
final nearLocationsStreamProvider = StreamProvider<List<LocationEntity>>((ref) {
  return ref.read(locationRepositoryProvider).getNearLocationStream();
});

/// 現在地
final currentLocationStreamProvider = StreamProvider<LocationData>((ref) {
  return ref.read(locationRepositoryProvider).getCurrentLocationStream();
});

/// チャット
final chatMyStreamProvider = StreamProvider<List<ChatEntity>>((ref) {
  return ref.read(chatRepositoryProvider).getChatMyStream();
});

/// チャット
final chatOppStreamProvider = StreamProvider<List<ChatEntity>>((ref) {
  return ref.read(chatRepositoryProvider).getChatOppStream();
});

/// チャット
final chatMyOppStreamProvider = StreamProvider.family<List<ChatEntity>, String>((ref, token) {
  return ref.read(chatRepositoryProvider).getChatMyOppStream(token);
});

/// チャット
final chatOppMyStreamProvider = StreamProvider.family<List<ChatEntity>, String>((ref, token) {
  return ref.read(chatRepositoryProvider).getChatOppMyStream(token);
});

final StreamProvider<List<ExampleEntity>> examplesStreamProvider =
StreamProvider<List<ExampleEntity>>((ref) {
  return ref.read(exampleRepositoryProvider).getExampleStream();
});
