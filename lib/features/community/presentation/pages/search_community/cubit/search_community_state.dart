part of 'search_community_cubit.dart';

@freezed
class SearchCommunityState with _$SearchCommunityState {
  const factory SearchCommunityState.initial({
    List<Community>? communityResult,
    List<String>? recentSearch,
    List<Community>? newCommunity,
    String? searchQuery,
  }) = _Initial;
}
