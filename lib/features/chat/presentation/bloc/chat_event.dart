part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.loadMessages(String communityId) = LoadMessages;
  const factory ChatEvent.sendMessage(MessageModel message) = SendMessage;
  const factory ChatEvent.searchMessages(String keyword) = SearchMessages;
}
