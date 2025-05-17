import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'community.freezed.dart';
part 'community.g.dart';

@freezed
class Community with _$Community {
  const factory Community({
    String? id,
    required String name,
    required String desc,
    String? logo,
    String? regency,
    String? province,
    String? xTwitter,
    String? instagram,
    String? location,
    @Default([]) List<String> types,
    @Default([]) List<CommunityMember> members,
    @Default([]) List<String> membersId,
    @Default([]) List<String> rules,
    @Default([]) List<Map<String, dynamic>> events,
    DateTime? createdAt,
  }) = _Community;
  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);
}

@freezed
class CommunityMember with _$CommunityMember {
  const factory CommunityMember({
    String? userId,
    DateTime? joinedAt,
    String? role,
    String? name,
  }) = _CommunityMember;
  factory CommunityMember.fromJson(Map<String, dynamic> json) =>
      _$CommunityMemberFromJson(json);
}
