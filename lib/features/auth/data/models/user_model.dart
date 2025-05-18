import 'package:freezed_annotation/freezed_annotation.dart';
part "user_model.freezed.dart";
part "user_model.g.dart";

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String uid,
    String? name,
    String? email,
    String? job,
    String? fcmToken,
    String? desc,
    String? website,
    int? follower,
    int? following,
    DateTime? createdAt,
    String? imageProfileUrl,
    @Default(false) bool isPrivate,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
