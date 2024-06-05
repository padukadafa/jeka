import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';

class AuthLoginWIthGoogle extends StatelessWidget {
  const AuthLoginWIthGoogle({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final authBloc = context.read<AuthBloc>();
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow,
            blurRadius: 2,
          ),
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: () {
          authBloc.add(LoginWithGoogle(context));
        },
        label: const Text("Google"),
        icon: Image.asset(
          "assets/icons/google.png",
          width: 18,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.surfaceBright,
          foregroundColor: colorScheme.onSurface,
        ),
      ),
    );
  }
}
