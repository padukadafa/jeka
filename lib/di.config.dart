// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_messaging/firebase_messaging.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:jeka/di.dart' as _i34;
import 'package:jeka/features/auth/data/data_source/remote/auth_data_remote.dart'
    as _i24;
import 'package:jeka/features/auth/data/data_source/remote/auth_data_remote_impl.dart'
    as _i25;
import 'package:jeka/features/auth/data/repository/auth_repository.dart'
    as _i30;
import 'package:jeka/features/auth/data/repository/auth_repository_impl.dart'
    as _i31;
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart'
    as _i33;
import 'package:jeka/features/community/data/data_source/local/communirt_local_data_source.dart'
    as _i15;
import 'package:jeka/features/community/data/data_source/local/community_local_data_source_impl.dart'
    as _i16;
import 'package:jeka/features/community/data/data_source/local/search_database.dart'
    as _i4;
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source.dart'
    as _i19;
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source_impl.dart'
    as _i20;
import 'package:jeka/features/community/data/repository/community_repository.dart'
    as _i26;
import 'package:jeka/features/community/data/repository/community_repository_impl.dart'
    as _i27;
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart'
    as _i32;
import 'package:jeka/features/generative_text_editor/data/data_source/gemini_remote_data_source.dart'
    as _i12;
import 'package:jeka/features/generative_text_editor/data/data_source/gemini_remote_data_source_impl.dart'
    as _i13;
import 'package:jeka/features/generative_text_editor/data/repository/gemini_repository.dart'
    as _i17;
import 'package:jeka/features/generative_text_editor/data/repository/gemini_repository_impl.dart'
    as _i18;
import 'package:jeka/features/settings/data/repository/settings_repository.dart'
    as _i10;
import 'package:jeka/features/settings/data/repository/settings_repository_impl.dart'
    as _i11;
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_bloc.dart'
    as _i21;
import 'package:jeka/features/user/data/remote/user_data_remote.dart' as _i22;
import 'package:jeka/features/user/data/remote/user_data_remote_impl.dart'
    as _i23;
import 'package:jeka/features/user/data/repository/user_repository.dart'
    as _i28;
import 'package:jeka/features/user/data/repository/user_repository_impl.dart'
    as _i29;
import 'package:jeka/utils/uploud_service.dart' as _i14;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    await gh.factoryAsync<_i4.SearchDatabase>(
      () => registerModule.searchDatabase,
      preResolve: true,
    );
    gh.singleton<_i5.Reference>(() => registerModule.firebaseStorageReference);
    gh.singleton<_i6.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.singleton<_i7.FirebaseFirestore>(() => registerModule.firebaseFirestore);
    gh.singleton<_i8.FirebaseMessaging>(() => registerModule.firebaseMessaging);
    gh.singleton<_i9.GoogleSignIn>(() => registerModule.googleSignin);
    gh.singleton<_i10.SettingsRepository>(
        () => _i11.SettingsRepositoryImpl(gh<_i3.SharedPreferences>()));
    gh.singleton<_i12.GeminiRemoteDataSource>(
        () => _i13.GeminiRemoteDataSourceImpl());
    gh.singleton<_i14.UploadService>(
        () => _i14.UploadService(gh<_i5.Reference>()));
    gh.singleton<_i15.CommunityLocalDataSource>(
        () => _i16.CommunityLocalDataSourceImpl(gh<_i4.SearchDatabase>()));
    gh.singleton<_i17.GeminiRepository>(
        () => _i18.GeminiRepositoryImpl(gh<_i12.GeminiRemoteDataSource>()));
    gh.singleton<_i19.CommunityRemoteDataSource>(
        () => _i20.CommunityRemoteDataSourceImpl(
              gh<_i7.FirebaseFirestore>(),
              gh<_i14.UploadService>(),
              gh<_i6.FirebaseAuth>(),
            ));
    gh.singleton<_i21.SettingsBloc>(
        () => _i21.SettingsBloc(gh<_i10.SettingsRepository>()));
    gh.singleton<_i22.UserDataRemote>(() => _i23.UserDataRemoteImpl(
          gh<_i7.FirebaseFirestore>(),
          gh<_i8.FirebaseMessaging>(),
          gh<_i6.FirebaseAuth>(),
          gh<_i14.UploadService>(),
        ));
    gh.singleton<_i24.AuthDataRemote>(() => _i25.AuthDataRemoteImpl(
          gh<_i6.FirebaseAuth>(),
          gh<_i22.UserDataRemote>(),
          gh<_i9.GoogleSignIn>(),
        ));
    gh.singleton<_i26.CommunityRepository>(() =>
        _i27.CommunityRepositoryImpl(gh<_i19.CommunityRemoteDataSource>()));
    gh.factory<_i28.UserRepository>(
        () => _i29.UserRepositoryImpl(gh<_i22.UserDataRemote>()));
    gh.singleton<_i30.AuthRepository>(
        () => _i31.AuthRepositoryImpl(gh<_i24.AuthDataRemote>()));
    gh.factory<_i32.CommunityBloc>(() => _i32.CommunityBloc(
          gh<_i26.CommunityRepository>(),
          gh<_i3.SharedPreferences>(),
          gh<_i19.CommunityRemoteDataSource>(),
        ));
    gh.factory<_i33.AuthBloc>(() => _i33.AuthBloc(
          gh<_i30.AuthRepository>(),
          gh<_i6.FirebaseAuth>(),
          gh<_i28.UserRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i34.RegisterModule {}
