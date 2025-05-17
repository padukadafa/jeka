import 'package:injectable/injectable.dart';
import 'package:jeka/features/chat/data/data_sources/chat_remote_data_source.dart';
import 'package:jeka/features/chat/data/models/message_model.dart';

abstract class ChatRepository {
  Stream<List<MessageModel>> getMessages(String communityId);
  Future<void> sendMessage(MessageModel message);
  Future<List<MessageModel>> searchMessages(String keyword);
}

@Singleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource remote;

  ChatRepositoryImpl(this.remote);

  @override
  Stream<List<MessageModel>> getMessages(String communityId) =>
      remote.getMessages(communityId);

  @override
  Future<void> sendMessage(MessageModel message) => remote.sendMessage(message);

  @override
  Future<List<MessageModel>> searchMessages(String keyword) =>
      remote.searchMessages(keyword);
}
