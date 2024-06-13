import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/features/community/data/dummy/community_dummy.dart';
import 'package:jeka/features/community/data/models/community.dart';

part 'community_event.dart';
part 'community_state.dart';
part 'community_bloc.freezed.dart';

@Injectable()
class CommunityBloc extends Bloc<CommunityEvent, CommunityState> {
  CommunityBloc() : super(_Initial(community: dummyCommunities[0])) {
    on<ChangePage>(_changePageHandler);
    on<ChangeCommunityTab>(_changeCommunityTabHandler);
  }

  _changePageHandler(ChangePage event, Emitter<CommunityState> emit) {
    emit(state.copyWith(tabIndex: event.index));
  }

  _changeCommunityTabHandler(
      ChangeCommunityTab event, Emitter<CommunityState> emit) {
    emit(state.copyWith(communityTabIndex: event.index));
  }
}
