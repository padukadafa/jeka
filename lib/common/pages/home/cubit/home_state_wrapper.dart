import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/pages/home/controller/home_controller.dart';
import 'package:jeka/common/pages/home/cubit/home_cubit.dart';

class HomeStateWrapper extends StatelessWidget {
  final Widget child;
  final HomeController controller;
  const HomeStateWrapper({
    super.key,
    required this.child,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Builder(
        builder: (context) {
          controller.updateContext(context);
          return child;
        },
      ),
    );
  }
}
