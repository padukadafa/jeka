// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityImpl _$$CommunityImplFromJson(Map<String, dynamic> json) =>
    _$CommunityImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      desc: json['desc'] as String,
      logo: json['logo'] as String?,
      regency: json['regency'] as String?,
      province: json['province'] as String?,
      xTwitter: json['xTwitter'] as String?,
      instagram: json['instagram'] as String?,
      location: json['location'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      members: (json['members'] as List<dynamic>?)
              ?.map((e) => CommunityMember.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      membersId: (json['membersId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      rules:
          (json['rules'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CommunityImplToJson(_$CommunityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'logo': instance.logo,
      'regency': instance.regency,
      'province': instance.province,
      'xTwitter': instance.xTwitter,
      'instagram': instance.instagram,
      'location': instance.location,
      'types': instance.types,
      'members': instance.members,
      'membersId': instance.membersId,
      'rules': instance.rules,
      'events': instance.events,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$CommunityMemberImpl _$$CommunityMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$CommunityMemberImpl(
      userId: json['userId'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CommunityMemberImplToJson(
        _$CommunityMemberImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
    };
