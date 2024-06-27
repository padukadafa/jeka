import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jeka/core/region.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/data/repository/community_repository.dart';

part 'create_community_state.dart';
part 'create_community_cubit.freezed.dart';

class CreateCommunityCubit extends Cubit<CreateCommunityState> {
  final CommunityRepository _communityRepository;
  CreateCommunityCubit(this._communityRepository)
      : super(const CreateCommunityState.initial());

  updateLogo() async {
    final ImagePicker picker = ImagePicker();
    final XFile? response = await picker.pickImage(source: ImageSource.gallery);
    if (response != null) {
      emit(state.copyWith(logo: File(response.path)));
    }
  }

  updateName(String name) {
    emit(state.copyWith(name: name));
  }

  updateProvince(String province) {
    final provinceId =
        dataProvinsi.where((val) => val['name'] == province).first['id'];
    emit(
      state.copyWith(
        province: province,
        provinceId: provinceId,
        regency: null,
      ),
    );
  }

  updateRegency(String regency) {
    emit(state.copyWith(regency: regency));
  }

  updateDescription(BuildContext context) async {
    final result = await context.router.push<String>(GenerativeTextEditorRoute(
      desc: state.desc ?? "",
      enableImage: true,
    ));
    emit(state.copyWith(desc: result));
  }

  updateTypes(String type) {
    List<String> currentTypes = state.types.toList();
    if (currentTypes.contains(type)) {
      currentTypes.remove(type);
    } else {
      if (currentTypes.length == 3) {
        return;
      }
      currentTypes.add(type);
    }

    emit(state.copyWith(types: currentTypes));
  }

  addRules(String rules) {
    if (rules.isEmpty) {
      return;
    }
    List<String> currentRules = state.rules.toList();
    currentRules.add(rules);
    emit(state.copyWith(rules: currentRules));
  }

  deleteRules(String rules) {
    List<String> currentRules = state.rules.toList();
    currentRules.remove(rules);
    emit(state.copyWith(rules: currentRules));
  }

  changePage(int index) {
    emit(state.copyWith(page: index));
  }

  createCommunity(BuildContext context) async {
    EasyLoading.show();
    if (state.name == null || state.desc == null || state.logo == null) {
      EasyLoading.showError("Please fill alll required form");
      return;
    }
    if (state.name!.isEmpty || state.desc!.isEmpty) {
      EasyLoading.showError("Please fill alll required form");
      return;
    }
    final community = Community(
      name: state.name!,
      desc: state.desc!,
      logo: "",
      rules: state.rules,
      regency: state.regency,
      province: state.province,
      types: state.types,
    );
    await _communityRepository.createCommunity(community, state.logo!);
    EasyLoading.dismiss();
    context.router.maybePop();
  }
}
