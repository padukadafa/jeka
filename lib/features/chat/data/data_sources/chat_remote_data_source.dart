import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/features/chat/data/models/message_model.dart';
import 'package:uuid/uuid.dart';

abstract class ChatRemoteDataSource {
  Stream<List<MessageModel>> getMessages(String communityId);
  Future<void> sendMessage(MessageModel message);
  Future<List<MessageModel>> searchMessages(String keyword);
}

@Singleton(as: ChatRemoteDataSource)
class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  ChatRemoteDataSourceImpl(this.firestore, this.auth);

  @override
  Stream<List<MessageModel>> getMessages(String communityId) {
    return firestore
        .collection('chats')
        .orderBy('timestamp', descending: true)
        .where('communityId', isEqualTo: communityId)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map(MessageModel.fromFirestore).toList());
  }

  @override
  Future<void> sendMessage(MessageModel message) async {
    message = message.copyWith(
      id: Uuid().v4(),
      sender: MessageSenderModel(
        id: auth.currentUser!.uid,
        avatarUrl: auth.currentUser!.photoURL,
        name: auth.currentUser!.displayName ?? "",
      ),
    );
    await firestore.collection('chats').add(message.toJson());
  }

  @override
  Future<List<MessageModel>> searchMessages(String keyword) async {
    final result = await firestore
        .collection('chats')
        .where('text', isGreaterThanOrEqualTo: keyword)
        .where('text', isLessThanOrEqualTo: '$keyword\uf8ff')
        .get();

    return result.docs.map(MessageModel.fromFirestore).toList();
  }
}
