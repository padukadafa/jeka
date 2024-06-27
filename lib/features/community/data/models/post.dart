import 'package:freezed_annotation/freezed_annotation.dart';
part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    String? id,
    String? communityId,
    String? desc,
    @Default([]) List<PostFile> files,
    String? writer,
    String? writerId,
    DateTime? createdAt,
    @Default([]) List<PostReaction> postReactions,
    @Default([]) List<PostComment> comments,
    @Default([]) List<PostReport> reports,
    @Default(0) int reportsCount,
    @Default(0) postType,
  }) = _Post;
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class PostReaction with _$PostReaction {
  const factory PostReaction({
    DateTime? createdAt,
    String? writer,
    String? writerId,
    @Default(0) int reaction,
  }) = _PostReaction;
  factory PostReaction.fromJson(Map<String, dynamic> json) =>
      _$PostReactionFromJson(json);
}

@freezed
class PostComment with _$PostComment {
  const factory PostComment({
    String? id,
    DateTime? createdAt,
    String? writer,
    String? writerId,
    String? comment,
  }) = _PostComment;
  factory PostComment.fromJson(Map<String, dynamic> json) =>
      _$PostCommentFromJson(json);
}

@freezed
class PostReport with _$PostReport {
  const factory PostReport({
    String? id,
    DateTime? createdAt,
    String? writer,
    String? writerId,
    String? desc,
  }) = _PostReport;
  factory PostReport.fromJson(Map<String, dynamic> json) =>
      _$PostReportFromJson(json);
}

@freezed
class PostFile with _$PostFile {
  const factory PostFile({
    String? fileLocation,
    String? fileType,
    String? name,
    String? fileSizeString,
  }) = _PostFile;
  factory PostFile.fromJson(Map<String, dynamic> json) =>
      _$PostFileFromJson(json);
}
