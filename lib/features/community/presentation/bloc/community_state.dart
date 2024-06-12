part of 'community_bloc.dart';

@freezed
class CommunityState with _$CommunityState {
  const factory CommunityState.initial({
    @Default(0) int tabIndex,
    Community? community,
  }) = _Initial;
}
