import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:jeka/features/user/data/repository/user_repository.dart';

class EditUserController {
  late TextEditingController nameController;
  late TextEditingController jobController;
  late TextEditingController websiteController;
  late BuildContext context;
  late AuthBloc authBloc;
  late UserRepository userRepository;
  final formKey = GlobalKey<FormState>();
  init(BuildContext context) {
    authBloc = context.read<AuthBloc>();
    this.context = context;
    final user = authBloc.state.user;
    nameController = TextEditingController(text: user?.name);
    jobController = TextEditingController(text: user?.job);
    websiteController = TextEditingController(text: user?.website);
    userRepository = getIt<UserRepository>();
  }

  updatePhotoProfile() async {
    final result = await userRepository.updatePhotoprofile();
    result.fold((l) {
      if (l is AbortedFailure) return;
      EasyLoading.showError(l.message);
    }, (r) {
      authBloc.add(const UpdateUser());
    });
  }

  updateProfile() async {
    EasyLoading.show();
    if (!formKey.currentState!.validate()) {
      return;
    }
    if (authBloc.state.user != null) {
      final result = await userRepository.updateUser(
        authBloc.state.user!.copyWith(
          name: nameController.text,
          job: jobController.text,
          website: websiteController.text,
        ),
      );
      result.fold((l) {
        EasyLoading.showError(l.message);
      }, (r) {
        authBloc.add(const UpdateUser());
      });
    }
    EasyLoading.dismiss();
  }

  updateDescription(String desc) async {
    if (authBloc.state.user != null) {
      final result = await userRepository.updateUser(
        authBloc.state.user!.copyWith(
          desc: desc,
        ),
      );
      result.fold((l) {
        EasyLoading.showError(l.message);
      }, (r) {
        authBloc.add(const UpdateUser());
      });
    }
  }
}
