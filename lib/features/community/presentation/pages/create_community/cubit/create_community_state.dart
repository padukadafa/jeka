part of 'create_community_cubit.dart';

@freezed
class CreateCommunityState with _$CreateCommunityState {
  const factory CreateCommunityState.initial({
    String? name,
    File? logo,
    String? desc,
    String? province,
    String? provinceId,
    String? regency,
    @Default([]) List<String> types,
    @Default([]) List<String> rules,
    @Default(0) page,
  }) = _Initial;
}
