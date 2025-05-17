// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import "package:path/path.dart";

Future<File> jpgToPng(File file) async {
  final bytes = file.readAsBytesSync();
  final tempDir = await getTemporaryDirectory();
  File newFile =
      await File('${tempDir.path}/${basename(file.path).split(".")[0]}.png')
          .create();
  newFile.writeAsBytesSync(bytes);
  return newFile;
}
