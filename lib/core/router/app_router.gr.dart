// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutPage(),
      );
    },
    AddCommunityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCommunityPage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChangePasswordPage(key: args.key),
      );
    },
    ChatDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatDetailPage(),
      );
    },
    CommunityCreateEventRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommunityCreateEventPage(),
      );
    },
    CommunityCreatePostRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommunityCreatePostPage(),
      );
    },
    CommunityDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CommunityDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CommunityDetailPage(
          key: args.key,
          community: args.community,
        ),
      );
    },
    CommunityEventDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommunityEventDetailPage(),
      );
    },
    CommunityFeedDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CommunityFeedDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CommunityFeedDetailPage(
          key: args.key,
          post: args.post,
        ),
      );
    },
    CommunityGuidelinesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommunityGuidelinesPage(),
      );
    },
    CreateCommunityRoute.name: (routeData) {
      final args = routeData.argsAs<CreateCommunityRouteArgs>(
          orElse: () => const CreateCommunityRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateCommunityPage(key: args.key),
      );
    },
    EditUserRoute.name: (routeData) {
      final args = routeData.argsAs<EditUserRouteArgs>(
          orElse: () => const EditUserRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditUserPage(key: args.key),
      );
    },
    FAQRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FAQPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordRouteArgs>(
          orElse: () => const ForgotPasswordRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ForgotPasswordPage(key: args.key),
      );
    },
    GenerativeTextEditorRoute.name: (routeData) {
      final args = routeData.argsAs<GenerativeTextEditorRouteArgs>();
      return AutoRoutePage<String>(
        routeData: routeData,
        child: GenerativeTextEditorPage(
          key: args.key,
          desc: args.desc,
          enableImage: args.enableImage,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
    JoinCommunityRoute.name: (routeData) {
      final args = routeData.argsAs<JoinCommunityRouteArgs>();
      return AutoRoutePage<Community>(
        routeData: routeData,
        child: JoinCommunityPage(
          key: args.key,
          community: args.community,
        ),
      );
    },
    LoadingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoadingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(key: args.key),
      );
    },
    OnBoardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnBoardingRouteArgs>(
          orElse: () => const OnBoardingRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OnBoardingPage(key: args.key),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterPage(key: args.key),
      );
    },
    RulesAndAgreementRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RulesAndAgreementPage(),
      );
    },
    SearchCommunityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchCommunityPage(),
      );
    },
    SearchCommunityResultRoute.name: (routeData) {
      final args = routeData.argsAs<SearchCommunityResultRouteArgs>(
          orElse: () => const SearchCommunityResultRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchCommunityResultPage(
          key: args.key,
          query: args.query,
          type: args.type,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    TextEditorRoute.name: (routeData) {
      final args = routeData.argsAs<TextEditorRouteArgs>();
      return AutoRoutePage<String>(
        routeData: routeData,
        child: TextEditorPage(
          key: args.key,
          initialText: args.initialText,
        ),
      );
    },
    UserDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserDetailPage(),
      );
    },
  };
}

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<ChangePasswordRouteArgs> page =
      PageInfo<ChangePasswordRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<CommunityDetailRouteArgs> page =
      PageInfo<CommunityDetailRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<CommunityFeedDetailRouteArgs> page =
      PageInfo<CommunityFeedDetailRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<CreateCommunityRouteArgs> page =
      PageInfo<CreateCommunityRouteArgs>(name);
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

  static const PageInfo<EditUserRouteArgs> page =
      PageInfo<EditUserRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<ForgotPasswordRouteArgs> page =
      PageInfo<ForgotPasswordRouteArgs>(name);
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

  static const PageInfo<GenerativeTextEditorRouteArgs> page =
      PageInfo<GenerativeTextEditorRouteArgs>(name);
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
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
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

  static const PageInfo<JoinCommunityRouteArgs> page =
      PageInfo<JoinCommunityRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
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

  static const PageInfo<OnBoardingRouteArgs> page =
      PageInfo<OnBoardingRouteArgs>(name);
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

  static const PageInfo<RegisterRouteArgs> page =
      PageInfo<RegisterRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<SearchCommunityResultRouteArgs> page =
      PageInfo<SearchCommunityResultRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<TextEditorRouteArgs> page =
      PageInfo<TextEditorRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}
