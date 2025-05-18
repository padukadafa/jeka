import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/chat/data/models/message_model.dart';
import 'package:jeka/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';

class ChatPage extends StatefulWidget {
  final void Function() onOpenDrawer;
  const ChatPage({
    super.key,
    required this.onOpenDrawer,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _messageController = TextEditingController();
  final _searchController = TextEditingController();
  bool _showSearch = false;
  final userId = getIt<FirebaseAuth>().currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AppLayout(
      brightness: Brightness.light,
      child: BlocBuilder<CommunityBloc, CommunityState>(
        builder: (context, communityState) {
          if (communityState.community?.id == null) {
            return const Center(child: Text("No community selected"));
          }
          return BlocProvider(
            create: (_) => getIt<ChatBloc>()
              ..add(ChatEvent.loadMessages(communityState.community!.id!)),
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, chatState) {
                final chatBloc = context.read<ChatBloc>();
                return Scaffold(
                  appBar: AppBar(
                    title: const ReuseableText("Chat",
                        fontWeight: FontWeight.bold, fontSize: 18),
                    centerTitle: true,
                    backgroundColor: colorScheme.surface,
                    surfaceTintColor: colorScheme.surface,
                    leading: IconButton(
                      onPressed: () {
                        widget.onOpenDrawer();
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.barsStaggered,
                      ),
                    ),
                    actions: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
                        onPressed: () => setState(() {
                          _showSearch = !_showSearch;
                        }),
                      )
                    ],
                  ),
                  body: Column(
                    children: [
                      Visibility(
                        visible: _showSearch,
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: ReuseableTextForm(
                            controller: _searchController,
                            onChange: (value) {
                              context
                                  .read<ChatBloc>()
                                  .add(ChatEvent.searchMessages(value));
                            },
                            onTapOutside: (e) {
                              setState(() {
                                _showSearch = false;
                              });
                              if (_searchController.text.isNotEmpty) {
                                _searchController.clear();
                                final communityId = context
                                        .read<CommunityBloc>()
                                        .state
                                        .community
                                        ?.id ??
                                    '';
                                context
                                    .read<ChatBloc>()
                                    .add(ChatEvent.loadMessages(communityId));
                              }
                            },
                            hintText: 'Search message...',
                          ),
                        ),
                      ),
                      Expanded(
                        child: BlocBuilder<ChatBloc, ChatState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () =>
                                  const Center(child: Text("No messages")),
                              loading: () => const Center(
                                  child: CircularProgressIndicator()),
                              loaded: (messages) {
                                final query = _searchController.text.trim();
                                return ListView.builder(
                                  reverse: true,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  itemCount: messages.length,
                                  itemBuilder: (context, index) {
                                    final msg = messages[index];
                                    final isCurrentUser =
                                        msg.sender.id == userId;

                                    final alignment = isCurrentUser
                                        ? CrossAxisAlignment.end
                                        : CrossAxisAlignment.start;
                                    final bubbleColor = isCurrentUser
                                        ? colorScheme.primary
                                        : colorScheme.secondaryContainer;
                                    final textColor = isCurrentUser
                                        ? colorScheme.onPrimary
                                        : colorScheme.onSecondaryContainer;

                                    final borderRadius = BorderRadius.only(
                                      topLeft: const Radius.circular(12),
                                      topRight: const Radius.circular(12),
                                      bottomLeft: isCurrentUser
                                          ? const Radius.circular(12)
                                          : Radius.zero,
                                      bottomRight: isCurrentUser
                                          ? Radius.zero
                                          : const Radius.circular(12),
                                    );

                                    return Align(
                                      alignment: isCurrentUser
                                          ? Alignment.centerRight
                                          : Alignment.centerLeft,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 6),
                                        constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.75),
                                        child: Column(
                                          crossAxisAlignment: alignment,
                                          children: [
                                            if (!isCurrentUser)
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 4),
                                                child: Text(
                                                  msg.sender.name,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: colorScheme
                                                        .onSurfaceVariant,
                                                  ),
                                                ),
                                              ),
                                            Container(
                                              padding: const EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                color: bubbleColor,
                                                borderRadius: borderRadius,
                                              ),
                                              child: RichText(
                                                text: highlightOccurrences(
                                                  msg.content,
                                                  query,
                                                  TextStyle(color: textColor),
                                                  TextStyle(
                                                    backgroundColor: colorScheme
                                                        .surface
                                                        .withOpacity(0.4),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 4, left: 4, right: 4),
                                              child: Text(
                                                TimeOfDay.fromDateTime(
                                                        msg.timestamp)
                                                    .format(context),
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: colorScheme.outline),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              error: (message) {
                                return Center(child: Text(message));
                              },
                            );
                          },
                        ),
                      ),
                      _buildInput(colorScheme, chatBloc,
                          communityState.community?.id ?? ""),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildInput(
      ColorScheme colorScheme, ChatBloc chatBloc, String communityId) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceBright,
        boxShadow: [
          BoxShadow(
              color: colorScheme.shadow,
              blurRadius: 2,
              offset: const Offset(0, -2))
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: ReuseableTextForm(
              controller: _messageController,
              hintText: "Type message...",
            ),
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.solidPaperPlane,
                color: Colors.grey),
            onPressed: () {
              chatBloc.add(
                ChatEvent.sendMessage(
                  MessageModel(
                    id: '',
                    content: _messageController.text,
                    timestamp: DateTime.now(),
                    sender: MessageSenderModel(id: "123", name: "You"),
                    communityId: communityId,
                  ),
                ),
              );
              _messageController.clear();
            },
          ),
        ],
      ),
    );
  }

  TextSpan highlightOccurrences(
    String source,
    String query,
    TextStyle normalStyle,
    TextStyle highlightStyle,
  ) {
    if (query.isEmpty) {
      return TextSpan(text: source, style: normalStyle);
    }

    final matches =
        RegExp(RegExp.escape(query), caseSensitive: false).allMatches(source);
    if (matches.isEmpty) {
      return TextSpan(text: source, style: normalStyle);
    }

    final spans = <TextSpan>[];
    int currentIndex = 0;

    for (final match in matches) {
      if (match.start > currentIndex) {
        spans.add(TextSpan(
            text: source.substring(currentIndex, match.start),
            style: normalStyle));
      }
      spans.add(TextSpan(
          text: source.substring(match.start, match.end),
          style: highlightStyle));
      currentIndex = match.end;
    }

    if (currentIndex < source.length) {
      spans.add(
          TextSpan(text: source.substring(currentIndex), style: normalStyle));
    }

    return TextSpan(children: spans);
  }
}
