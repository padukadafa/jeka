import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'community_event.dart';
part 'community_state.dart';
part 'community_bloc.freezed.dart';

@Injectable()
class CommunityBloc extends Bloc<CommunityEvent, CommunityState> {
  CommunityBloc() : super(const _Initial()) {
    on<ChangePage>(_changePageHandler);
  }

  _changePageHandler(ChangePage event, Emitter<CommunityState> emit) {
    emit(state.copyWith(tabIndex: event.index));
  }
}
