// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:jeka/di.dart' as _i487;
import 'package:jeka/features/auth/data/data_source/remote/auth_data_remote.dart'
    as _i1021;
import 'package:jeka/features/auth/data/data_source/remote/auth_data_remote_impl.dart'
    as _i65;
import 'package:jeka/features/auth/data/repository/auth_repository.dart'
    as _i365;
import 'package:jeka/features/auth/data/repository/auth_repository_impl.dart'
    as _i617;
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart'
    as _i936;
import 'package:jeka/features/community/data/data_source/local/communirt_local_data_source.dart'
    as _i741;
import 'package:jeka/features/community/data/data_source/local/community_local_data_source_impl.dart'
    as _i369;
import 'package:jeka/features/community/data/data_source/local/search_database.dart'
    as _i401;
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source.dart'
    as _i329;
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source_impl.dart'
    as _i23;
import 'package:jeka/features/community/data/repository/community_repository_impl.dart'
    as _i335;
import 'package:jeka/features/community/domain/repository/community_repository.dart'
    as _i409;
import 'package:jeka/features/community/domain/usecases/like_post_usecase.dart'
    as _i611;
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart'
    as _i1036;
import 'package:jeka/features/generative_text_editor/data/data_source/gemini_remote_data_source.dart'
    as _i701;
import 'package:jeka/features/generative_text_editor/data/data_source/gemini_remote_data_source_impl.dart'
    as _i431;
import 'package:jeka/features/generative_text_editor/data/repository/gemini_repository.dart'
    as _i186;
import 'package:jeka/features/generative_text_editor/data/repository/gemini_repository_impl.dart'
    as _i129;
import 'package:jeka/features/settings/data/repository/settings_repository.dart'
    as _i322;
import 'package:jeka/features/settings/data/repository/settings_repository_impl.dart'
    as _i522;
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_bloc.dart'
    as _i551;
import 'package:jeka/features/user/data/remote/user_data_remote.dart' as _i821;
import 'package:jeka/features/user/data/remote/user_data_remote_impl.dart'
    as _i683;
import 'package:jeka/features/user/data/repository/user_repository.dart'
    as _i65;
import 'package:jeka/features/user/data/repository/user_repository_impl.dart'
    as _i417;
import 'package:jeka/utils/uploud_service.dart' as _i132;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    await gh.factoryAsync<_i401.SearchDatabase>(
      () => registerModule.searchDatabase,
      preResolve: true,
    );
    gh.singleton<_i457.Reference>(
        () => registerModule.firebaseStorageReference);
    gh.singleton<_i59.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.singleton<_i974.FirebaseFirestore>(
        () => registerModule.firebaseFirestore);
    gh.singleton<_i892.FirebaseMessaging>(
        () => registerModule.firebaseMessaging);
    gh.singleton<_i116.GoogleSignIn>(() => registerModule.googleSignin);
    gh.singleton<_i322.SettingsRepository>(
        () => _i522.SettingsRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.singleton<_i701.GeminiRemoteDataSource>(
        () => _i431.GeminiRemoteDataSourceImpl());
    gh.singleton<_i132.UploadService>(
        () => _i132.UploadService(gh<_i457.Reference>()));
    gh.singleton<_i741.CommunityLocalDataSource>(
        () => _i369.CommunityLocalDataSourceImpl(gh<_i401.SearchDatabase>()));
    gh.singleton<_i186.GeminiRepository>(
        () => _i129.GeminiRepositoryImpl(gh<_i701.GeminiRemoteDataSource>()));
    gh.singleton<_i329.CommunityRemoteDataSource>(
        () => _i23.CommunityRemoteDataSourceImpl(
              gh<_i974.FirebaseFirestore>(),
              gh<_i132.UploadService>(),
              gh<_i59.FirebaseAuth>(),
            ));
    gh.singleton<_i551.SettingsBloc>(
        () => _i551.SettingsBloc(gh<_i322.SettingsRepository>()));
    gh.singleton<_i409.CommunityRepository>(() =>
        _i335.CommunityRepositoryImpl(gh<_i329.CommunityRemoteDataSource>()));
    gh.singleton<_i821.UserDataRemote>(() => _i683.UserDataRemoteImpl(
          gh<_i974.FirebaseFirestore>(),
          gh<_i892.FirebaseMessaging>(),
          gh<_i59.FirebaseAuth>(),
          gh<_i132.UploadService>(),
        ));
    gh.singleton<_i1021.AuthDataRemote>(() => _i65.AuthDataRemoteImpl(
          gh<_i59.FirebaseAuth>(),
          gh<_i821.UserDataRemote>(),
          gh<_i116.GoogleSignIn>(),
        ));
    gh.factory<_i1036.CommunityBloc>(() => _i1036.CommunityBloc(
          gh<_i409.CommunityRepository>(),
          gh<_i460.SharedPreferences>(),
          gh<_i329.CommunityRemoteDataSource>(),
        ));
    gh.singleton<_i611.LikePostUsecase>(
        () => _i611.LikePostUsecase(gh<_i409.CommunityRepository>()));
    gh.factory<_i65.UserRepository>(
        () => _i417.UserRepositoryImpl(gh<_i821.UserDataRemote>()));
    gh.singleton<_i365.AuthRepository>(
        () => _i617.AuthRepositoryImpl(gh<_i1021.AuthDataRemote>()));
    gh.factory<_i936.AuthBloc>(() => _i936.AuthBloc(
          gh<_i365.AuthRepository>(),
          gh<_i59.FirebaseAuth>(),
          gh<_i65.UserRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i487.RegisterModule {}
