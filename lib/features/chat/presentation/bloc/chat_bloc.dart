import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/features/chat/data/models/message_model.dart';
import 'package:jeka/features/chat/data/repository/chat_repository.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository repo;
  List<MessageModel> _allMessages = [];

  ChatBloc(this.repo) : super(const ChatState.initial()) {
    on<LoadMessages>((event, emit) async {
      emit(const ChatState.loading());
      await emit.forEach<List<MessageModel>>(
        repo.getMessages(event.communityId),
        onData: (data) {
          _allMessages = data;
          return ChatState.loaded(data);
        },
        onError: (e, _) => ChatState.error(e.toString()),
      );
    });

    on<SendMessage>((event, emit) async {
      try {
        await repo.sendMessage(event.message);
        _allMessages.insert(0, event.message);
        emit(ChatState.loaded(List.from(_allMessages)));
      } catch (e) {
        emit(ChatState.error(e.toString()));
      }
    });

    on<SearchMessages>((event, emit) async {
      emit(const ChatState.loading());
      try {
        final query = event.keyword.toLowerCase();
        final filtered = _allMessages
            .where((msg) => msg.content.toLowerCase().contains(query))
            .toList();

        emit(ChatState.loaded(filtered));
      } catch (e) {
        emit(ChatState.error(e.toString()));
      }
    });
  }
}
