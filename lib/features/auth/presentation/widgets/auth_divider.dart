import 'package:flutter/material.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(),
        ),
        SizedBox(
          width: 12,
        ),
        Text("OR"),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
