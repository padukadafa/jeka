import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:jeka/features/community/data/repository/community_repository.dart';

part 'create_post_state.dart';
part 'create_post_cubit.freezed.dart';

class CreatePostCubit extends Cubit<CreatePostState> {
  final CommunityRepository _repository;
  final FirebaseAuth _auth;
  CreatePostCubit(this._repository, this._auth)
      : super(const CreatePostState.initial());

  addFile() async {
    if (state.files.length >= 3) {
      EasyLoading.showError("max 3 files");
      return;
    }
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      if (result.files.single.size > 10 * 1024 * 1024) {
        EasyLoading.showError("File size can't more than 10MB");
        return;
      }
      List<File> currentFiles = state.files.toList();
      currentFiles.add(File(result.files.single.path!));
      emit(state.copyWith(files: currentFiles));
    }
  }

  deleteFile(File file) async {
    List<File> currentFiles = state.files.toList();
    currentFiles.remove(file);
    emit(state.copyWith(files: currentFiles));
  }

  changeDesc(String desc) {
    emit(state.copyWith(desc: desc));
  }

  changeType(int type) {
    emit(state.copyWith(type: type));
  }

  createPost(BuildContext context, String communityId) async {
    if ((state.desc == null || state.desc == "") && state.type == 2) {
      EasyLoading.showError("Desc can't empty");
    }

    EasyLoading.show();
    final result = await _repository.createPost(
      Post(
        desc: state.desc,
        createdAt: DateTime.now(),
        postType: state.type,
        writer: _auth.currentUser?.displayName,
        writerId: _auth.currentUser?.uid,
        communityId: communityId,
      ),
      state.files,
    );
    result.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) {
      context.router.maybePop();
      EasyLoading.dismiss();
    });
    EasyLoading.dismiss();
  }
}
