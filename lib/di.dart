import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:jeka/features/community/data/data_source/local/search_database.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_bloc.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureDependencies() async => await getIt.init();

@module
abstract class RegisterModule {
  @singleton
  Reference get firebaseStorageReference => FirebaseStorage.instance.ref();
  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @singleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
  @singleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
  @singleton
  GoogleSignIn get googleSignin => GoogleSignIn(scopes: ['email', 'profile']);

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
  @preResolve
  Future<SearchDatabase> get searchDatabase =>
      $FloorSearchDatabase.databaseBuilder("search_database").build();
}

class GlobalBlocProviders extends StatelessWidget {
  final Widget child;
  const GlobalBlocProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsBloc>(
          create: (_) => getIt.get<SettingsBloc>(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => getIt.get<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt.get<CommunityBloc>(),
        ),
      ],
      child: child,
    );
  }
}
