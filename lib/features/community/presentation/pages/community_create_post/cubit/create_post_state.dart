part of 'create_post_cubit.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.initial({
    String? desc,
    @Default([]) List<File> files,
    @Default(false) bool isUploading,
    @Default(1) int type,
  }) = _Initial;
}
