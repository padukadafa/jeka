// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_messaging/firebase_messaging.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:jeka/common/blocs/bloc/settings_bloc.dart' as _i14;
import 'package:jeka/common/data/repository/settings_repository.dart' as _i8;
import 'package:jeka/common/data/repository/settings_repository_impl.dart'
    as _i9;
import 'package:jeka/di.dart' as _i18;
import 'package:jeka/features/auth/data/data_source/remote/auth_data_remote.dart'
    as _i12;
import 'package:jeka/features/auth/data/data_source/remote/auth_data_remote_impl.dart'
    as _i13;
import 'package:jeka/features/auth/data/data_source/remote/user_data_remote.dart'
    as _i10;
import 'package:jeka/features/auth/data/data_source/remote/user_data_remote_impl.dart'
    as _i11;
import 'package:jeka/features/auth/data/repository/auth_repository.dart'
    as _i15;
import 'package:jeka/features/auth/data/repository/auth_repository_impl.dart'
    as _i16;
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart'
    as _i17;
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
    gh.singleton<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.singleton<_i5.FirebaseFirestore>(() => registerModule.firebaseFirestore);
    gh.singleton<_i6.FirebaseMessaging>(() => registerModule.firebaseMessaging);
    gh.singleton<_i7.GoogleSignIn>(() => registerModule.googleSignin);
    gh.singleton<_i8.SettingsRepository>(
        () => _i9.SettingsRepositoryImpl(gh<_i3.SharedPreferences>()));
    gh.singleton<_i10.UserDataRemote>(() => _i11.UserDataRemoteImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.FirebaseMessaging>(),
        ));
    gh.singleton<_i12.AuthDataRemote>(() => _i13.AuthDataRemoteImpl(
          gh<_i4.FirebaseAuth>(),
          gh<_i10.UserDataRemote>(),
          gh<_i7.GoogleSignIn>(),
        ));
    gh.singleton<_i14.SettingsBloc>(
        () => _i14.SettingsBloc(gh<_i8.SettingsRepository>()));
    gh.singleton<_i15.AuthRepository>(
        () => _i16.AuthRepositoryImpl(gh<_i12.AuthDataRemote>()));
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(
          gh<_i15.AuthRepository>(),
          gh<_i10.UserDataRemote>(),
          gh<_i4.FirebaseAuth>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i18.RegisterModule {}
