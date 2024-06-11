part of 'community_bloc.dart';

@freezed
class CommunityEvent with _$CommunityEvent {
  const factory CommunityEvent.started() = _Started;
  const factory CommunityEvent.changePage(int index) = ChangePage;
}
