// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AboutPage();
    },
  );
}

/// generated route for
/// [AddCommunityPage]
class AddCommunityRoute extends PageRouteInfo<void> {
  const AddCommunityRoute({List<PageRouteInfo>? children})
      : super(
          AddCommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCommunityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddCommunityPage();
    },
  );
}

/// generated route for
/// [ChangePasswordPage]
class ChangePasswordRoute extends PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return ChangePasswordPage(key: args.key);
    },
  );
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ChatDetailPage]
class ChatDetailRoute extends PageRouteInfo<void> {
  const ChatDetailRoute({List<PageRouteInfo>? children})
      : super(
          ChatDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatDetailPage();
    },
  );
}

/// generated route for
/// [CommunityCreateEventPage]
class CommunityCreateEventRoute extends PageRouteInfo<void> {
  const CommunityCreateEventRoute({List<PageRouteInfo>? children})
      : super(
          CommunityCreateEventRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityCreateEventRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CommunityCreateEventPage();
    },
  );
}

/// generated route for
/// [CommunityCreatePostPage]
class CommunityCreatePostRoute extends PageRouteInfo<void> {
  const CommunityCreatePostRoute({List<PageRouteInfo>? children})
      : super(
          CommunityCreatePostRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityCreatePostRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CommunityCreatePostPage();
    },
  );
}

/// generated route for
/// [CommunityDetailPage]
class CommunityDetailRoute extends PageRouteInfo<CommunityDetailRouteArgs> {
  CommunityDetailRoute({
    Key? key,
    required Community community,
    List<PageRouteInfo>? children,
  }) : super(
          CommunityDetailRoute.name,
          args: CommunityDetailRouteArgs(
            key: key,
            community: community,
          ),
          initialChildren: children,
        );

  static const String name = 'CommunityDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CommunityDetailRouteArgs>();
      return CommunityDetailPage(
        key: args.key,
        community: args.community,
      );
    },
  );
}

class CommunityDetailRouteArgs {
  const CommunityDetailRouteArgs({
    this.key,
    required this.community,
  });

  final Key? key;

  final Community community;

  @override
  String toString() {
    return 'CommunityDetailRouteArgs{key: $key, community: $community}';
  }
}

/// generated route for
/// [CommunityEventDetailPage]
class CommunityEventDetailRoute extends PageRouteInfo<void> {
  const CommunityEventDetailRoute({List<PageRouteInfo>? children})
      : super(
          CommunityEventDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityEventDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CommunityEventDetailPage();
    },
  );
}

/// generated route for
/// [CommunityFeedDetailPage]
class CommunityFeedDetailRoute
    extends PageRouteInfo<CommunityFeedDetailRouteArgs> {
  CommunityFeedDetailRoute({
    Key? key,
    required Post post,
    List<PageRouteInfo>? children,
  }) : super(
          CommunityFeedDetailRoute.name,
          args: CommunityFeedDetailRouteArgs(
            key: key,
            post: post,
          ),
          initialChildren: children,
        );

  static const String name = 'CommunityFeedDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CommunityFeedDetailRouteArgs>();
      return CommunityFeedDetailPage(
        key: args.key,
        post: args.post,
      );
    },
  );
}

class CommunityFeedDetailRouteArgs {
  const CommunityFeedDetailRouteArgs({
    this.key,
    required this.post,
  });

  final Key? key;

  final Post post;

  @override
  String toString() {
    return 'CommunityFeedDetailRouteArgs{key: $key, post: $post}';
  }
}

/// generated route for
/// [CommunityGuidelinesPage]
class CommunityGuidelinesRoute extends PageRouteInfo<void> {
  const CommunityGuidelinesRoute({List<PageRouteInfo>? children})
      : super(
          CommunityGuidelinesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityGuidelinesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CommunityGuidelinesPage();
    },
  );
}

/// generated route for
/// [CommunityMemberPage]
class CommunityMemberRoute extends PageRouteInfo<void> {
  const CommunityMemberRoute({List<PageRouteInfo>? children})
      : super(
          CommunityMemberRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityMemberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CommunityMemberPage();
    },
  );
}

/// generated route for
/// [CreateCommunityPage]
class CreateCommunityRoute extends PageRouteInfo<CreateCommunityRouteArgs> {
  CreateCommunityRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CreateCommunityRoute.name,
          args: CreateCommunityRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateCommunityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateCommunityRouteArgs>(
          orElse: () => const CreateCommunityRouteArgs());
      return CreateCommunityPage(key: args.key);
    },
  );
}

class CreateCommunityRouteArgs {
  const CreateCommunityRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CreateCommunityRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EditUserPage]
class EditUserRoute extends PageRouteInfo<EditUserRouteArgs> {
  EditUserRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EditUserRoute.name,
          args: EditUserRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EditUserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditUserRouteArgs>(
          orElse: () => const EditUserRouteArgs());
      return EditUserPage(key: args.key);
    },
  );
}

class EditUserRouteArgs {
  const EditUserRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EditUserRouteArgs{key: $key}';
  }
}

/// generated route for
/// [FAQPage]
class FAQRoute extends PageRouteInfo<void> {
  const FAQRoute({List<PageRouteInfo>? children})
      : super(
          FAQRoute.name,
          initialChildren: children,
        );

  static const String name = 'FAQRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FAQPage();
    },
  );
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>(
          orElse: () => const ForgotPasswordRouteArgs());
      return ForgotPasswordPage(key: args.key);
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [GenerativeTextEditorPage]
class GenerativeTextEditorRoute
    extends PageRouteInfo<GenerativeTextEditorRouteArgs> {
  GenerativeTextEditorRoute({
    Key? key,
    required String desc,
    bool enableImage = false,
    List<PageRouteInfo>? children,
  }) : super(
          GenerativeTextEditorRoute.name,
          args: GenerativeTextEditorRouteArgs(
            key: key,
            desc: desc,
            enableImage: enableImage,
          ),
          initialChildren: children,
        );

  static const String name = 'GenerativeTextEditorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GenerativeTextEditorRouteArgs>();
      return GenerativeTextEditorPage(
        key: args.key,
        desc: args.desc,
        enableImage: args.enableImage,
      );
    },
  );
}

class GenerativeTextEditorRouteArgs {
  const GenerativeTextEditorRouteArgs({
    this.key,
    required this.desc,
    this.enableImage = false,
  });

  final Key? key;

  final String desc;

  final bool enableImage;

  @override
  String toString() {
    return 'GenerativeTextEditorRouteArgs{key: $key, desc: $desc, enableImage: $enableImage}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [JoinCommunityPage]
class JoinCommunityRoute extends PageRouteInfo<JoinCommunityRouteArgs> {
  JoinCommunityRoute({
    Key? key,
    required Community community,
    List<PageRouteInfo>? children,
  }) : super(
          JoinCommunityRoute.name,
          args: JoinCommunityRouteArgs(
            key: key,
            community: community,
          ),
          initialChildren: children,
        );

  static const String name = 'JoinCommunityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JoinCommunityRouteArgs>();
      return JoinCommunityPage(
        key: args.key,
        community: args.community,
      );
    },
  );
}

class JoinCommunityRouteArgs {
  const JoinCommunityRouteArgs({
    this.key,
    required this.community,
  });

  final Key? key;

  final Community community;

  @override
  String toString() {
    return 'JoinCommunityRouteArgs{key: $key, community: $community}';
  }
}

/// generated route for
/// [LoadingPage]
class LoadingRoute extends PageRouteInfo<void> {
  const LoadingRoute({List<PageRouteInfo>? children})
      : super(
          LoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoadingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoadingPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [OnBoardingPage]
class OnBoardingRoute extends PageRouteInfo<OnBoardingRouteArgs> {
  OnBoardingRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OnBoardingRoute.name,
          args: OnBoardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnBoardingRouteArgs>(
          orElse: () => const OnBoardingRouteArgs());
      return OnBoardingPage(key: args.key);
    },
  );
}

class OnBoardingRouteArgs {
  const OnBoardingRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OnBoardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return RegisterPage(key: args.key);
    },
  );
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RulesAndAgreementPage]
class RulesAndAgreementRoute extends PageRouteInfo<void> {
  const RulesAndAgreementRoute({List<PageRouteInfo>? children})
      : super(
          RulesAndAgreementRoute.name,
          initialChildren: children,
        );

  static const String name = 'RulesAndAgreementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RulesAndAgreementPage();
    },
  );
}

/// generated route for
/// [SearchCommunityPage]
class SearchCommunityRoute extends PageRouteInfo<void> {
  const SearchCommunityRoute({List<PageRouteInfo>? children})
      : super(
          SearchCommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchCommunityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchCommunityPage();
    },
  );
}

/// generated route for
/// [SearchCommunityResultPage]
class SearchCommunityResultRoute
    extends PageRouteInfo<SearchCommunityResultRouteArgs> {
  SearchCommunityResultRoute({
    Key? key,
    String? query,
    String? type,
    List<PageRouteInfo>? children,
  }) : super(
          SearchCommunityResultRoute.name,
          args: SearchCommunityResultRouteArgs(
            key: key,
            query: query,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchCommunityResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchCommunityResultRouteArgs>(
          orElse: () => const SearchCommunityResultRouteArgs());
      return SearchCommunityResultPage(
        key: args.key,
        query: args.query,
        type: args.type,
      );
    },
  );
}

class SearchCommunityResultRouteArgs {
  const SearchCommunityResultRouteArgs({
    this.key,
    this.query,
    this.type,
  });

  final Key? key;

  final String? query;

  final String? type;

  @override
  String toString() {
    return 'SearchCommunityResultRouteArgs{key: $key, query: $query, type: $type}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [TextEditorPage]
class TextEditorRoute extends PageRouteInfo<TextEditorRouteArgs> {
  TextEditorRoute({
    Key? key,
    required String initialText,
    List<PageRouteInfo>? children,
  }) : super(
          TextEditorRoute.name,
          args: TextEditorRouteArgs(
            key: key,
            initialText: initialText,
          ),
          initialChildren: children,
        );

  static const String name = 'TextEditorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TextEditorRouteArgs>();
      return TextEditorPage(
        key: args.key,
        initialText: args.initialText,
      );
    },
  );
}

class TextEditorRouteArgs {
  const TextEditorRouteArgs({
    this.key,
    required this.initialText,
  });

  final Key? key;

  final String initialText;

  @override
  String toString() {
    return 'TextEditorRouteArgs{key: $key, initialText: $initialText}';
  }
}

/// generated route for
/// [UserDetailPage]
class UserDetailRoute extends PageRouteInfo<void> {
  const UserDetailRoute({List<PageRouteInfo>? children})
      : super(
          UserDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UserDetailPage();
    },
  );
}
