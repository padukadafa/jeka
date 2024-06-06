import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String? url;
  final double size;
  const Avatar({
    super.key,
    this.url,
    this.size = 70,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
    );
  }
}
