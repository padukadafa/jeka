import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:jeka/features/community/domain/repository/community_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rxdart/rxdart.dart';

part 'community_event.dart';
part 'community_state.dart';
part 'community_bloc.freezed.dart';

@Injectable()
class CommunityBloc extends Bloc<CommunityEvent, CommunityState> {
  final CommunityRepository _repository;
  final CommunityRemoteDataSource _dataSource;
  final SharedPreferences _sharedPreferences;
  CommunityBloc(this._repository, this._sharedPreferences, this._dataSource)
      : super(const _Initial()) {
    on<ChangePage>(_changePageHandler);
    on<ChangeCommunityTab>(_changeCommunityTabHandler);
    on<UpdateCommunityList>(_updateCommunityListHandler,transformer:(events, mapper) => events.switchMap(mapper),);
    on<ChangeCommunity>(_changeCommunityHandler);
    on<JoinCommunity>(_joinCommunityHandler);
    on<LeaveCommunity>(_onLeaveCommunityHandler);
    on<CreatePostComment>(_createPostCommentHandler);
  }

  _changePageHandler(ChangePage event, Emitter<CommunityState> emit) {
    emit(state.copyWith(tabIndex: event.index));
  }

  _changeCommunityTabHandler(
      ChangeCommunityTab event, Emitter<CommunityState> emit) {
    emit(state.copyWith(communityTabIndex: event.index));
  }

  FutureOr<void> _updateCommunityListHandler(
      UpdateCommunityList event, Emitter<CommunityState> emit) async {
    emit(state.copyWith(communities: [], community: null));
    final result = await _repository.getCommunity();
    result.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) async {
      if (r.isEmpty) {
        event.context.router.replaceAll([const SearchCommunityRoute()]);
      }
      final currentCommunityId =
          _sharedPreferences.getString(AppConstants.SELECTED_COMMUNITY_ID);
      if (currentCommunityId == null || currentCommunityId == "") {
        await _sharedPreferences.setString(
            AppConstants.SELECTED_COMMUNITY_ID, r[0].id ?? "");
        emit(
          state.copyWith(
            communities: r,
            community: r[0],
          ),
        );
        return;
      }

      final selectedCommunityIndex =
          r.indexWhere((e) => e.id == currentCommunityId);
      if (selectedCommunityIndex == -1) {
        await _sharedPreferences.setString(
            AppConstants.SELECTED_COMMUNITY_ID, r[0].id ?? "");
        emit(
          state.copyWith(
            communities: r,
            community: r[0],
          ),
        );
        return;
      }
      final selectedCommunity = r[selectedCommunityIndex];
      r.removeAt(selectedCommunityIndex);

      emit(state.copyWith(
          communities: [selectedCommunity, ...r],
          community: selectedCommunity));
    });
  }

  FutureOr<void> _changeCommunityHandler(
      ChangeCommunity event, Emitter<CommunityState> emit) async {
    List<Community> r = state.communities.toList();
    final selectedCommunityIndex =
        r.indexWhere((e) => e.id == event.communityId);
    final selectedCommunity = r[selectedCommunityIndex];
    r.removeAt(selectedCommunityIndex);

    emit(state.copyWith(
        communities: [selectedCommunity, ...r], community: selectedCommunity));
    await _sharedPreferences.setString(
        AppConstants.SELECTED_COMMUNITY_ID, event.communityId);
  }

  FutureOr<void> _joinCommunityHandler(
      JoinCommunity event, Emitter<CommunityState> emit) async {
    final result = await _repository.addCommunities(event.communityId);
    result.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) async {
      if (event.onDone != null) {
        final community = await _dataSource.getCommunity(event.communityId);
        event.onDone!(community);
      }
      EasyLoading.showSuccess("Success to join this community");
    });
  }

  FutureOr<void> _onLeaveCommunityHandler(
      LeaveCommunity event, Emitter<CommunityState> emit) async {
    EasyLoading.show();

    final result = await _repository.leaveCommunity(event.communityId);
    result.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) async {
      if (event.onDone != null) {
        final community = await _dataSource.getCommunity(event.communityId);
        event.onDone!(community);
      }
      EasyLoading.showSuccess("Success Leave this community");
    });
  }

  FutureOr<void> _createPostCommentHandler(
      CreatePostComment event, Emitter<CommunityState> emit) async {
    if (event.comment.comment == null || event.comment.comment!.isEmpty) {
      return;
    }
    EasyLoading.show();

    final result =
        await _repository.createPostComment(event.post.id!, event.comment);
    result.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) async {
      List<PostComment> newComments = event.post.comments.toList();
      newComments.add(r);
      if (event.onDone != null) {
        event.onDone!(event.post.copyWith(comments: newComments));
      }
      EasyLoading.dismiss();
    });
  }
}
