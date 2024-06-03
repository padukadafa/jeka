import 'package:freezed_annotation/freezed_annotation.dart';
part "onboarding.freezed.dart";

@freezed
class Onboarding with _$Onboarding {
  const factory Onboarding({
    required String imagePath,
    required String title,
    required String desc,
  }) = _Onboarding;
}
