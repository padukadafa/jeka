import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';

class CommunitySelector<T>
    extends BlocSelector<CommunityBloc, CommunityState, T> {
  CommunitySelector(
      {super.key, required super.selector, required Widget Function(T) builder})
      : super(builder: (_, value) => builder(value));
}

class CurrentCommunitySelector extends CommunitySelector<Community?> {
  CurrentCommunitySelector({super.key, required super.builder})
      : super(selector: (state) => state.community);
}
