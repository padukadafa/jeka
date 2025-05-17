import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jeka/di.dart';
import 'package:jeka/utils/uploud_service.dart';

class CommunityLogo extends StatelessWidget {
  final String? uid;
  final double size;
  const CommunityLogo({
    super.key,
    this.uid,
    this.size = 70,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getIt<UploadService>()
          .getDownloadUrl("communities/$uid/images/logo.png"),
      builder: (context, snapshot) {
        return CachedNetworkImage(
          imageUrl: snapshot.data ?? "",
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
