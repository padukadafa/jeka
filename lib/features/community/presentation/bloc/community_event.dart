part of 'community_bloc.dart';

@freezed
class CommunityEvent with _$CommunityEvent {
  const factory CommunityEvent.started() = _Started;
  const factory CommunityEvent.changePage(int index) = ChangePage;
  const factory CommunityEvent.changeCommunityTab(int index) =
      ChangeCommunityTab;
  const factory CommunityEvent.updateCommunityList(BuildContext context) =
      UpdateCommunityList;
  const factory CommunityEvent.changeCommunity(String communityId) =
      ChangeCommunity;
  const factory CommunityEvent.joinCommunity(String communityId,
      {void Function(Community)? onDone}) = JoinCommunity;
  const factory CommunityEvent.leaveCommunity(
      BuildContext context, String communityId,
      {void Function(Community)? onDone}) = LeaveCommunity;
  const factory CommunityEvent.createPostComment(
      BuildContext context, PostComment comment, Post post,
      {void Function(Post)? onDone}) = CreatePostComment;
}
