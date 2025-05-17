import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    String? id,
    String? title,
    String? eventVisibility,
    String? eventDesc,
    EventLocation? eventLocation,
    DateTime? time,
    @Default([]) List<EventAttachment> attachments,
    @Default([]) List<EventParticipant> participants,
    @Default([]) List<String> participantsId,
    @Default([]) List<EventCollaboration> collaboration,
    DateTime? createdAt,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class EventAttachment with _$EventAttachment {
  const factory EventAttachment({
    String? attachmentLocation,
    String? attachmentType,
  }) = _EventAttachment;

  factory EventAttachment.fromJson(Map<String, dynamic> json) =>
      _$EventAttachmentFromJson(json);
}

@freezed
class EventLocation with _$EventLocation {
  const factory EventLocation({
    String? location,
    String? locationType,
  }) = _EventLocation;

  factory EventLocation.fromJson(Map<String, dynamic> json) =>
      _$EventLocationFromJson(json);
}

@freezed
class EventCollaboration with _$EventCollaboration {
  const factory EventCollaboration({
    String? communityId,
    String? communityName,
    String? desc,
    @Default(false) bool approveStatus,
  }) = _EventCollaboration;

  factory EventCollaboration.fromJson(Map<String, dynamic> json) =>
      _$EventCollaborationFromJson(json);
}

@freezed
class EventParticipant with _$EventParticipant {
  const factory EventParticipant({
    String? userId,
    String? communityId,
    String? communityName,
    String? name,
  }) = _EventParticipant;

  factory EventParticipant.fromJson(Map<String, dynamic> json) =>
      _$EventParticipantFromJson(json);
}
