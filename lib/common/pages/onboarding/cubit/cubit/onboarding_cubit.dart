import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState());

  void changePage(int index) {
    if (index > 2) {
      emit(state.copyWith(pageIndex: 2));
    } else if (index < 0) {
      emit(state.copyWith(pageIndex: 0));
    } else {
      emit(state.copyWith(pageIndex: index));
    }
  }

  void incrementPage() {
    if (state.pageIndex == 2) {
      emit(state.copyWith(pageIndex: 0));
    } else {
      emit(state.copyWith(pageIndex: state.pageIndex + 1));
    }
  }
}
