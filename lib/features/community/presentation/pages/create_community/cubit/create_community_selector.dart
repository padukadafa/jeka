import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';

class CreateCommunitySelector<T>
    extends BlocSelector<CreateCommunityCubit, CreateCommunityState, T> {
  CreateCommunitySelector(
      {super.key, required super.selector, required Widget Function(T) builder})
      : super(builder: (_, value) => builder(value));
}

class LogoCreateCommunitySelector extends CreateCommunitySelector<File?> {
  LogoCreateCommunitySelector({super.key, required super.builder})
      : super(selector: (val) => val.logo);
}

class ProvinceCreateCommunitySelector extends CreateCommunitySelector<String?> {
  ProvinceCreateCommunitySelector({super.key, required super.builder})
      : super(selector: (state) => state.province);
}

class RegencyCreateCommunitySelector
    extends CreateCommunitySelector<Map<String, String?>> {
  RegencyCreateCommunitySelector({super.key, required super.builder})
      : super(
          selector: (state) => {
            "regency": state.regency,
            "provinceId": state.provinceId,
          },
        );
}

class DescriptionCreateCommunitySelector
    extends CreateCommunitySelector<String?> {
  DescriptionCreateCommunitySelector({super.key, required super.builder})
      : super(selector: (state) => state.desc);
}

class TypesCreateCommunitySelector
    extends CreateCommunitySelector<List<String>> {
  TypesCreateCommunitySelector({super.key, required super.builder})
      : super(selector: (state) => state.types);
}

class RulesCreateCommunitySelector
    extends CreateCommunitySelector<List<String>> {
  RulesCreateCommunitySelector({super.key, required super.builder})
      : super(selector: (state) => state.rules);
}

class PageCreateCommunitySelector extends CreateCommunitySelector<int> {
  PageCreateCommunitySelector({super.key, required super.builder})
      : super(selector: (state) => state.page);
}
