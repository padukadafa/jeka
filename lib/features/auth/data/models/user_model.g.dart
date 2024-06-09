// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      job: json['job'] as String?,
      fcmToken: json['fcmToken'] as String?,
      desc: json['desc'] as String?,
      website: json['website'] as String?,
      follower: (json['follower'] as num?)?.toInt(),
      following: (json['following'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      imageProfileUrl: json['imageProfileUrl'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'job': instance.job,
      'fcmToken': instance.fcmToken,
      'desc': instance.desc,
      'website': instance.website,
      'follower': instance.follower,
      'following': instance.following,
      'createdAt': instance.createdAt?.toIso8601String(),
      'imageProfileUrl': instance.imageProfileUrl,
    };
