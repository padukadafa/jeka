// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String? get id => throw _privateConstructorUsedError;
  String? get communityId => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  List<PostFile> get files => throw _privateConstructorUsedError;
  String? get writer => throw _privateConstructorUsedError;
  String? get writerId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<PostReaction> get postReactions => throw _privateConstructorUsedError;
  List<PostComment> get comments => throw _privateConstructorUsedError;
  List<PostReport> get reports => throw _privateConstructorUsedError;
  int get reportsCount => throw _privateConstructorUsedError;
  dynamic get postType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String? id,
      String? communityId,
      String? desc,
      List<PostFile> files,
      String? writer,
      String? writerId,
      DateTime? createdAt,
      List<PostReaction> postReactions,
      List<PostComment> comments,
      List<PostReport> reports,
      int reportsCount,
      dynamic postType});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? communityId = freezed,
    Object? desc = freezed,
    Object? files = null,
    Object? writer = freezed,
    Object? writerId = freezed,
    Object? createdAt = freezed,
    Object? postReactions = null,
    Object? comments = null,
    Object? reports = null,
    Object? reportsCount = null,
    Object? postType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PostFile>,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      writerId: freezed == writerId
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postReactions: null == postReactions
          ? _value.postReactions
          : postReactions // ignore: cast_nullable_to_non_nullable
              as List<PostReaction>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<PostComment>,
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<PostReport>,
      reportsCount: null == reportsCount
          ? _value.reportsCount
          : reportsCount // ignore: cast_nullable_to_non_nullable
              as int,
      postType: freezed == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? communityId,
      String? desc,
      List<PostFile> files,
      String? writer,
      String? writerId,
      DateTime? createdAt,
      List<PostReaction> postReactions,
      List<PostComment> comments,
      List<PostReport> reports,
      int reportsCount,
      dynamic postType});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? communityId = freezed,
    Object? desc = freezed,
    Object? files = null,
    Object? writer = freezed,
    Object? writerId = freezed,
    Object? createdAt = freezed,
    Object? postReactions = null,
    Object? comments = null,
    Object? reports = null,
    Object? reportsCount = null,
    Object? postType = freezed,
  }) {
    return _then(_$PostImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PostFile>,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      writerId: freezed == writerId
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postReactions: null == postReactions
          ? _value._postReactions
          : postReactions // ignore: cast_nullable_to_non_nullable
              as List<PostReaction>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<PostComment>,
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<PostReport>,
      reportsCount: null == reportsCount
          ? _value.reportsCount
          : reportsCount // ignore: cast_nullable_to_non_nullable
              as int,
      postType: freezed == postType ? _value.postType! : postType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {this.id,
      this.communityId,
      this.desc,
      final List<PostFile> files = const [],
      this.writer,
      this.writerId,
      this.createdAt,
      final List<PostReaction> postReactions = const [],
      final List<PostComment> comments = const [],
      final List<PostReport> reports = const [],
      this.reportsCount = 0,
      this.postType = 0})
      : _files = files,
        _postReactions = postReactions,
        _comments = comments,
        _reports = reports;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String? id;
  @override
  final String? communityId;
  @override
  final String? desc;
  final List<PostFile> _files;
  @override
  @JsonKey()
  List<PostFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final String? writer;
  @override
  final String? writerId;
  @override
  final DateTime? createdAt;
  final List<PostReaction> _postReactions;
  @override
  @JsonKey()
  List<PostReaction> get postReactions {
    if (_postReactions is EqualUnmodifiableListView) return _postReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postReactions);
  }

  final List<PostComment> _comments;
  @override
  @JsonKey()
  List<PostComment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<PostReport> _reports;
  @override
  @JsonKey()
  List<PostReport> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  @JsonKey()
  final int reportsCount;
  @override
  @JsonKey()
  final dynamic postType;

  @override
  String toString() {
    return 'Post(id: $id, communityId: $communityId, desc: $desc, files: $files, writer: $writer, writerId: $writerId, createdAt: $createdAt, postReactions: $postReactions, comments: $comments, reports: $reports, reportsCount: $reportsCount, postType: $postType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.writerId, writerId) ||
                other.writerId == writerId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._postReactions, _postReactions) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.reportsCount, reportsCount) ||
                other.reportsCount == reportsCount) &&
            const DeepCollectionEquality().equals(other.postType, postType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      communityId,
      desc,
      const DeepCollectionEquality().hash(_files),
      writer,
      writerId,
      createdAt,
      const DeepCollectionEquality().hash(_postReactions),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_reports),
      reportsCount,
      const DeepCollectionEquality().hash(postType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {final String? id,
      final String? communityId,
      final String? desc,
      final List<PostFile> files,
      final String? writer,
      final String? writerId,
      final DateTime? createdAt,
      final List<PostReaction> postReactions,
      final List<PostComment> comments,
      final List<PostReport> reports,
      final int reportsCount,
      final dynamic postType}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String? get id;
  @override
  String? get communityId;
  @override
  String? get desc;
  @override
  List<PostFile> get files;
  @override
  String? get writer;
  @override
  String? get writerId;
  @override
  DateTime? get createdAt;
  @override
  List<PostReaction> get postReactions;
  @override
  List<PostComment> get comments;
  @override
  List<PostReport> get reports;
  @override
  int get reportsCount;
  @override
  dynamic get postType;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostReaction _$PostReactionFromJson(Map<String, dynamic> json) {
  return _PostReaction.fromJson(json);
}

/// @nodoc
mixin _$PostReaction {
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get writer => throw _privateConstructorUsedError;
  String? get writerId => throw _privateConstructorUsedError;
  int get reaction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostReactionCopyWith<PostReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostReactionCopyWith<$Res> {
  factory $PostReactionCopyWith(
          PostReaction value, $Res Function(PostReaction) then) =
      _$PostReactionCopyWithImpl<$Res, PostReaction>;
  @useResult
  $Res call(
      {DateTime? createdAt, String? writer, String? writerId, int reaction});
}

/// @nodoc
class _$PostReactionCopyWithImpl<$Res, $Val extends PostReaction>
    implements $PostReactionCopyWith<$Res> {
  _$PostReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? writer = freezed,
    Object? writerId = freezed,
    Object? reaction = null,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      writerId: freezed == writerId
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String?,
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostReactionImplCopyWith<$Res>
    implements $PostReactionCopyWith<$Res> {
  factory _$$PostReactionImplCopyWith(
          _$PostReactionImpl value, $Res Function(_$PostReactionImpl) then) =
      __$$PostReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? createdAt, String? writer, String? writerId, int reaction});
}

/// @nodoc
class __$$PostReactionImplCopyWithImpl<$Res>
    extends _$PostReactionCopyWithImpl<$Res, _$PostReactionImpl>
    implements _$$PostReactionImplCopyWith<$Res> {
  __$$PostReactionImplCopyWithImpl(
      _$PostReactionImpl _value, $Res Function(_$PostReactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? writer = freezed,
    Object? writerId = freezed,
    Object? reaction = null,
  }) {
    return _then(_$PostReactionImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      writerId: freezed == writerId
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String?,
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostReactionImpl implements _PostReaction {
  const _$PostReactionImpl(
      {this.createdAt, this.writer, this.writerId, this.reaction = 0});

  factory _$PostReactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostReactionImplFromJson(json);

  @override
  final DateTime? createdAt;
  @override
  final String? writer;
  @override
  final String? writerId;
  @override
  @JsonKey()
  final int reaction;

  @override
  String toString() {
    return 'PostReaction(createdAt: $createdAt, writer: $writer, writerId: $writerId, reaction: $reaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostReactionImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.writerId, writerId) ||
                other.writerId == writerId) &&
            (identical(other.reaction, reaction) ||
                other.reaction == reaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, writer, writerId, reaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostReactionImplCopyWith<_$PostReactionImpl> get copyWith =>
      __$$PostReactionImplCopyWithImpl<_$PostReactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostReactionImplToJson(
      this,
    );
  }
}

abstract class _PostReaction implements PostReaction {
  const factory _PostReaction(
      {final DateTime? createdAt,
      final String? writer,
      final String? writerId,
      final int reaction}) = _$PostReactionImpl;

  factory _PostReaction.fromJson(Map<String, dynamic> json) =
      _$PostReactionImpl.fromJson;

  @override
  DateTime? get createdAt;
  @override
  String? get writer;
  @override
  String? get writerId;
  @override
  int get reaction;
  @override
  @JsonKey(ignore: true)
  _$$PostReactionImplCopyWith<_$PostReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostComment _$PostCommentFromJson(Map<String, dynamic> json) {
  return _PostComment.fromJson(json);
}

/// @nodoc
mixin _$PostComment {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get writer => throw _privateConstructorUsedError;
  String? get writerId => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCommentCopyWith<PostComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentCopyWith<$Res> {
  factory $PostCommentCopyWith(
          PostComment value, $Res Function(PostComment) then) =
      _$PostCommentCopyWithImpl<$Res, PostComment>;
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? writer,
      String? writerId,
      String? comment});
}

/// @nodoc
class _$PostCommentCopyWithImpl<$Res, $Val extends PostComment>
    implements $PostCommentCopyWith<$Res> {
  _$PostCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? writer = freezed,
    Object? writerId = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      writerId: freezed == writerId
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCommentImplCopyWith<$Res>
    implements $PostCommentCopyWith<$Res> {
  factory _$$PostCommentImplCopyWith(
          _$PostCommentImpl value, $Res Function(_$PostCommentImpl) then) =
      __$$PostCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? writer,
      String? writerId,
      String? comment});
}

/// @nodoc
class __$$PostCommentImplCopyWithImpl<$Res>
    extends _$PostCommentCopyWithImpl<$Res, _$PostCommentImpl>
    implements _$$PostCommentImplCopyWith<$Res> {
  __$$PostCommentImplCopyWithImpl(
      _$PostCommentImpl _value, $Res Function(_$PostCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? writer = freezed,
    Object? writerId = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$PostCommentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      writerId: freezed == writerId
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCommentImpl implements _PostComment {
  const _$PostCommentImpl(
      {this.id, this.createdAt, this.writer, this.writerId, this.comment});

  factory _$PostCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommentImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? writer;
  @override
  final String? writerId;
  @override
  final String? comment;

  @override
  String toString() {
    return 'PostComment(id: $id, createdAt: $createdAt, writer: $writer, writerId: $writerId, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.writerId, writerId) ||
                other.writerId == writerId) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, writer, writerId, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentImplCopyWith<_$PostCommentImpl> get copyWith =>
      __$$PostCommentImplCopyWithImpl<_$PostCommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommentImplToJson(
      this,
    );
  }
}

abstract class _PostComment implements PostComment {
  const factory _PostComment(
      {final String? id,
      final DateTime? createdAt,
      final String? writer,
      final String? writerId,
      final String? comment}) = _$PostCommentImpl;

  factory _PostComment.fromJson(Map<String, dynamic> json) =
      _$PostCommentImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  String? get writer;
  @override
  String? get writerId;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$PostCommentImplCopyWith<_$PostCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostReport _$PostReportFromJson(Map<String, dynamic> json) {
  return _PostReport.fromJson(json);
}

/// @nodoc
mixin _$PostReport {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get writer => throw _privateConstructorUsedError;
  String? get writerId => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostReportCopyWith<PostReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostReportCopyWith<$Res> {
  factory $PostReportCopyWith(
          PostReport value, $Res Function(PostReport) then) =
      _$PostReportCopyWithImpl<$Res, PostReport>;
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? writer,
      String? writerId,
      String? desc});
}

/// @nodoc
class _$PostReportCopyWithImpl<$Res, $Val extends PostReport>
    implements $PostReportCopyWith<$Res> {
  _$PostReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? writer = freezed,
    Object? writerId = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      writerId: freezed == writerId
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostReportImplCopyWith<$Res>
    implements $PostReportCopyWith<$Res> {
  factory _$$PostReportImplCopyWith(
          _$PostReportImpl value, $Res Function(_$PostReportImpl) then) =
      __$$PostReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? writer,
      String? writerId,
      String? desc});
}

/// @nodoc
class __$$PostReportImplCopyWithImpl<$Res>
    extends _$PostReportCopyWithImpl<$Res, _$PostReportImpl>
    implements _$$PostReportImplCopyWith<$Res> {
  __$$PostReportImplCopyWithImpl(
      _$PostReportImpl _value, $Res Function(_$PostReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? writer = freezed,
    Object? writerId = freezed,
    Object? desc = freezed,
  }) {
    return _then(_$PostReportImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      writerId: freezed == writerId
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostReportImpl implements _PostReport {
  const _$PostReportImpl(
      {this.id, this.createdAt, this.writer, this.writerId, this.desc});

  factory _$PostReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostReportImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? writer;
  @override
  final String? writerId;
  @override
  final String? desc;

  @override
  String toString() {
    return 'PostReport(id: $id, createdAt: $createdAt, writer: $writer, writerId: $writerId, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.writerId, writerId) ||
                other.writerId == writerId) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, writer, writerId, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostReportImplCopyWith<_$PostReportImpl> get copyWith =>
      __$$PostReportImplCopyWithImpl<_$PostReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostReportImplToJson(
      this,
    );
  }
}

abstract class _PostReport implements PostReport {
  const factory _PostReport(
      {final String? id,
      final DateTime? createdAt,
      final String? writer,
      final String? writerId,
      final String? desc}) = _$PostReportImpl;

  factory _PostReport.fromJson(Map<String, dynamic> json) =
      _$PostReportImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  String? get writer;
  @override
  String? get writerId;
  @override
  String? get desc;
  @override
  @JsonKey(ignore: true)
  _$$PostReportImplCopyWith<_$PostReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostFile _$PostFileFromJson(Map<String, dynamic> json) {
  return _PostFile.fromJson(json);
}

/// @nodoc
mixin _$PostFile {
  String? get fileLocation => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get fileSizeString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostFileCopyWith<PostFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFileCopyWith<$Res> {
  factory $PostFileCopyWith(PostFile value, $Res Function(PostFile) then) =
      _$PostFileCopyWithImpl<$Res, PostFile>;
  @useResult
  $Res call(
      {String? fileLocation,
      String? fileType,
      String? name,
      String? fileSizeString});
}

/// @nodoc
class _$PostFileCopyWithImpl<$Res, $Val extends PostFile>
    implements $PostFileCopyWith<$Res> {
  _$PostFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileLocation = freezed,
    Object? fileType = freezed,
    Object? name = freezed,
    Object? fileSizeString = freezed,
  }) {
    return _then(_value.copyWith(
      fileLocation: freezed == fileLocation
          ? _value.fileLocation
          : fileLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSizeString: freezed == fileSizeString
          ? _value.fileSizeString
          : fileSizeString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostFileImplCopyWith<$Res>
    implements $PostFileCopyWith<$Res> {
  factory _$$PostFileImplCopyWith(
          _$PostFileImpl value, $Res Function(_$PostFileImpl) then) =
      __$$PostFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fileLocation,
      String? fileType,
      String? name,
      String? fileSizeString});
}

/// @nodoc
class __$$PostFileImplCopyWithImpl<$Res>
    extends _$PostFileCopyWithImpl<$Res, _$PostFileImpl>
    implements _$$PostFileImplCopyWith<$Res> {
  __$$PostFileImplCopyWithImpl(
      _$PostFileImpl _value, $Res Function(_$PostFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileLocation = freezed,
    Object? fileType = freezed,
    Object? name = freezed,
    Object? fileSizeString = freezed,
  }) {
    return _then(_$PostFileImpl(
      fileLocation: freezed == fileLocation
          ? _value.fileLocation
          : fileLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSizeString: freezed == fileSizeString
          ? _value.fileSizeString
          : fileSizeString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFileImpl implements _PostFile {
  const _$PostFileImpl(
      {this.fileLocation, this.fileType, this.name, this.fileSizeString});

  factory _$PostFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFileImplFromJson(json);

  @override
  final String? fileLocation;
  @override
  final String? fileType;
  @override
  final String? name;
  @override
  final String? fileSizeString;

  @override
  String toString() {
    return 'PostFile(fileLocation: $fileLocation, fileType: $fileType, name: $name, fileSizeString: $fileSizeString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFileImpl &&
            (identical(other.fileLocation, fileLocation) ||
                other.fileLocation == fileLocation) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fileSizeString, fileSizeString) ||
                other.fileSizeString == fileSizeString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileLocation, fileType, name, fileSizeString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFileImplCopyWith<_$PostFileImpl> get copyWith =>
      __$$PostFileImplCopyWithImpl<_$PostFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFileImplToJson(
      this,
    );
  }
}

abstract class _PostFile implements PostFile {
  const factory _PostFile(
      {final String? fileLocation,
      final String? fileType,
      final String? name,
      final String? fileSizeString}) = _$PostFileImpl;

  factory _PostFile.fromJson(Map<String, dynamic> json) =
      _$PostFileImpl.fromJson;

  @override
  String? get fileLocation;
  @override
  String? get fileType;
  @override
  String? get name;
  @override
  String? get fileSizeString;
  @override
  @JsonKey(ignore: true)
  _$$PostFileImplCopyWith<_$PostFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
