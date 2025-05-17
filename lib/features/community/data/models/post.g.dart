// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as String?,
      communityId: json['communityId'] as String?,
      desc: json['desc'] as String?,
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => PostFile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      writer: json['writer'] as String?,
      writerId: json['writerId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      postReactions: (json['postReactions'] as List<dynamic>?)
              ?.map((e) => PostReaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => PostComment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      reports: (json['reports'] as List<dynamic>?)
              ?.map((e) => PostReport.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      reportsCount: (json['reportsCount'] as num?)?.toInt() ?? 0,
      postType: json['postType'] ?? 0,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'communityId': instance.communityId,
      'desc': instance.desc,
      'files': instance.files,
      'writer': instance.writer,
      'writerId': instance.writerId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'postReactions': instance.postReactions,
      'comments': instance.comments,
      'reports': instance.reports,
      'reportsCount': instance.reportsCount,
      'postType': instance.postType,
    };

_$PostReactionImpl _$$PostReactionImplFromJson(Map<String, dynamic> json) =>
    _$PostReactionImpl(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      writer: json['writer'] as String?,
      writerId: json['writerId'] as String?,
      reaction: (json['reaction'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PostReactionImplToJson(_$PostReactionImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'writer': instance.writer,
      'writerId': instance.writerId,
      'reaction': instance.reaction,
    };

_$PostCommentImpl _$$PostCommentImplFromJson(Map<String, dynamic> json) =>
    _$PostCommentImpl(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      writer: json['writer'] as String?,
      writerId: json['writerId'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$PostCommentImplToJson(_$PostCommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'writer': instance.writer,
      'writerId': instance.writerId,
      'comment': instance.comment,
    };

_$PostReportImpl _$$PostReportImplFromJson(Map<String, dynamic> json) =>
    _$PostReportImpl(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      writer: json['writer'] as String?,
      writerId: json['writerId'] as String?,
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$$PostReportImplToJson(_$PostReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'writer': instance.writer,
      'writerId': instance.writerId,
      'desc': instance.desc,
    };

_$PostFileImpl _$$PostFileImplFromJson(Map<String, dynamic> json) =>
    _$PostFileImpl(
      fileLocation: json['fileLocation'] as String?,
      fileType: json['fileType'] as String?,
      name: json['name'] as String?,
      fileSizeString: json['fileSizeString'] as String?,
    );

Map<String, dynamic> _$$PostFileImplToJson(_$PostFileImpl instance) =>
    <String, dynamic>{
      'fileLocation': instance.fileLocation,
      'fileType': instance.fileType,
      'name': instance.name,
      'fileSizeString': instance.fileSizeString,
    };
