// ignore_for_file: constant_identifier_names

import 'package:jeka/common/models/onboarding.dart';

class AppConstants {
  static const THEME_MODE = "theme-mode";
  static const ONBOARDING_STATUS = "onboarding-status";
  static const IS_SHOW_NOTIFICATION = 'is-show-notification';
  static const LANGUAGE = 'language';
  static const IS_PRIVATE = 'is-private';
  static const List<Onboarding> onBoardings = [
    Onboarding(
      imagePath: "assets/images/onboarding/first.svg",
      title: "Confused about finding people with the same interests?",
      desc:
          "jeka connects you with community who share similar interests, allowing you to interact, share experiences, and even build relationships based on those shared interests.",
    ),
    Onboarding(
      imagePath: "assets/images/onboarding/second.svg",
      title: "Want to organize your community better?",
      desc:
          "jeka not only helps you find people with similar interests, but also provides features that can support you in managing your community more easily",
    ),
    Onboarding(
      imagePath: "assets/images/onboarding/third.svg",
      title: "want to collaborate with other communities in an event?",
      desc:
          "jeka is the perfect place to find a community to collaborate with. With its advanced features, jeka allows you to find communities that match your interests or hobbies, and even facilitates collaboration between them",
    ),
  ];
}
