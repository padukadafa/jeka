import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/exception.dart';
import 'package:jeka/utils/jpg_to_png.dart';
import "package:path/path.dart";

@Singleton()
class UploadService {
  final Reference _storage;
  UploadService(this._storage);
  Future<String> uploadFile(File file, String path) async {
    try {
      if (extension(file.path) == ".jpeg" || extension(file.path) == ".jpg") {
        file = await jpgToPng(file);
        path = path.replaceAll(extension(path), ".png");
      }
      final ref = _storage.child(path);

      await ref.putFile(file);
      return await ref.getDownloadURL();
    } catch (e) {
      throw ServerError("Failed to upload file");
    }
  }

  Future<String> getDownloadUrl(String path) async {
    try {
      final ref = _storage.child(path);
      return await ref.getDownloadURL();
    } catch (e) {
      throw ServerError("Failed to get url");
    }
  }
}
