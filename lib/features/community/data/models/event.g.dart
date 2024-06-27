// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      eventVisibility: json['eventVisibility'] as String?,
      eventDesc: json['eventDesc'] as String?,
      eventLocation: json['eventLocation'] == null
          ? null
          : EventLocation.fromJson(
              json['eventLocation'] as Map<String, dynamic>),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => EventAttachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => EventParticipant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      participantsId: (json['participantsId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      collaboration: (json['collaboration'] as List<dynamic>?)
              ?.map(
                  (e) => EventCollaboration.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'eventVisibility': instance.eventVisibility,
      'eventDesc': instance.eventDesc,
      'eventLocation': instance.eventLocation,
      'time': instance.time?.toIso8601String(),
      'attachments': instance.attachments,
      'participants': instance.participants,
      'participantsId': instance.participantsId,
      'collaboration': instance.collaboration,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$EventAttachmentImpl _$$EventAttachmentImplFromJson(
        Map<String, dynamic> json) =>
    _$EventAttachmentImpl(
      attachmentLocation: json['attachmentLocation'] as String?,
      attachmentType: json['attachmentType'] as String?,
    );

Map<String, dynamic> _$$EventAttachmentImplToJson(
        _$EventAttachmentImpl instance) =>
    <String, dynamic>{
      'attachmentLocation': instance.attachmentLocation,
      'attachmentType': instance.attachmentType,
    };

_$EventLocationImpl _$$EventLocationImplFromJson(Map<String, dynamic> json) =>
    _$EventLocationImpl(
      location: json['location'] as String?,
      locationType: json['locationType'] as String?,
    );

Map<String, dynamic> _$$EventLocationImplToJson(_$EventLocationImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'locationType': instance.locationType,
    };

_$EventCollaborationImpl _$$EventCollaborationImplFromJson(
        Map<String, dynamic> json) =>
    _$EventCollaborationImpl(
      communityId: json['communityId'] as String?,
      communityName: json['communityName'] as String?,
      desc: json['desc'] as String?,
      approveStatus: json['approveStatus'] as bool? ?? false,
    );

Map<String, dynamic> _$$EventCollaborationImplToJson(
        _$EventCollaborationImpl instance) =>
    <String, dynamic>{
      'communityId': instance.communityId,
      'communityName': instance.communityName,
      'desc': instance.desc,
      'approveStatus': instance.approveStatus,
    };

_$EventParticipantImpl _$$EventParticipantImplFromJson(
        Map<String, dynamic> json) =>
    _$EventParticipantImpl(
      userId: json['userId'] as String?,
      communityId: json['communityId'] as String?,
      communityName: json['communityName'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$EventParticipantImplToJson(
        _$EventParticipantImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'communityId': instance.communityId,
      'communityName': instance.communityName,
      'name': instance.name,
    };
