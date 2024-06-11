import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';
part "post.freezed.dart";

@freezed
class Post with _$Post {
  const factory Post({
    required String id,
    required UserModel creator,
    required String content,
    required DateTime createdAt,
    required String title,
    required String image,
  }) = _Post;
}
