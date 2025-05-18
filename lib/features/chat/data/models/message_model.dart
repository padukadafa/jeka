import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String id,
    required String content,
    required DateTime timestamp,
    required MessageSenderModel sender,
    required String communityId,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  factory MessageModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return MessageModel.fromJson(data);
  }
}

@freezed
class MessageSenderModel with _$MessageSenderModel {
  const factory MessageSenderModel({
    required String id,
    required String name,
    String? avatarUrl,
  }) = _MessageSenderModel;

  factory MessageSenderModel.fromJson(Map<String, dynamic> json) =>
      _$MessageSenderModelFromJson(json);
}
