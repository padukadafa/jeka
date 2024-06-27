import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:open_filex/open_filex.dart';

class PostAttachmentWidget extends StatelessWidget {
  final List<PostFile> postFiles;
  const PostAttachmentWidget({
    super.key,
    required this.postFiles,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: List.generate(postFiles.length, (index) {
        return GestureDetector(
          onTap: () async {
            if (File("/storage/emulated/0/Download/${postFiles[index].name}")
                .existsSync()) {
              await OpenFilex.open(
                  "/storage/emulated/0/Download/${postFiles[index].name}");
              return;
            }
            final result = await FileDownloader.downloadFile(
              url: postFiles[index].fileLocation!,
              name: postFiles[index].name,
              onProgress: (String? fileName, double progress) {
                EasyLoading.showProgress(progress / 100);
              },
              onDownloadCompleted: (String path) async {
                await OpenFilex.open(path);
              },
              onDownloadError: (String error) {
                EasyLoading.showError(error);
              },
            );

            EasyLoading.dismiss();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: colorScheme.surfaceBright,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.shadow,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.solidFilePdf,
                  color: Colors.red,
                  size: 18,
                ),
                const SizedBox(
                  width: 6,
                ),
                ReuseableText(postFiles[index].name ?? ""),
                const Expanded(
                  child: SizedBox(),
                ),
                ReuseableText(postFiles[index].fileSizeString ?? ""),
              ],
            ),
          ),
        );
      }),
    );
  }
}
