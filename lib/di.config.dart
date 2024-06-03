// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:jeka/common/blocs/bloc/settings_bloc.dart' as _i6;
import 'package:jeka/common/data/repository/settings_repository.dart' as _i4;
import 'package:jeka/common/data/repository/settings_repository_impl.dart'
    as _i5;
import 'package:jeka/di.dart' as _i7;
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
    gh.singleton<_i4.SettingsRepository>(
        () => _i5.SettingsRepositoryImpl(gh<_i3.SharedPreferences>()));
    gh.singleton<_i6.SettingsBloc>(
        () => _i6.SettingsBloc(gh<_i4.SettingsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i7.RegisterModule {}
