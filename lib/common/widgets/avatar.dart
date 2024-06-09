import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_selector.dart';

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
    return UserAuthSelector(
      builder: (user) {
        return CachedNetworkImage(
          imageUrl: user?.imageProfileUrl ?? "",
          errorWidget: (context, url, error) {
            return Container(
              width: size,
              height: size,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            );
          },
          placeholder: (context, url) {
            return Container(
              width: size,
              height: size,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            );
          },
          imageBuilder: (context, imageProvider) {
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
