import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jeka/features/community/data/models/community.dart';

part 'search_community_state.dart';
part 'search_community_cubit.freezed.dart';

class SearchCommunityCubit extends Cubit<SearchCommunityState> {
  SearchCommunityCubit() : super(const SearchCommunityState.initial());
}
