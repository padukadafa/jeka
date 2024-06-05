// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String name, String email, String password});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements Register {
  const _$RegisterImpl(this.context,
      {required this.name, required this.email, required this.password});

  @override
  final BuildContext context;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.register(context: $context, name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return register(context, name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return register?.call(context, name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(context, name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements AuthEvent {
  const factory Register(final BuildContext context,
      {required final String name,
      required final String email,
      required final String password}) = _$RegisterImpl;

  BuildContext get context;
  String get name;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$LoginWithEmailAndPasswordImplCopyWith(
          _$LoginWithEmailAndPasswordImpl value,
          $Res Function(_$LoginWithEmailAndPasswordImpl) then) =
      __$$LoginWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String email, String password});
}

/// @nodoc
class __$$LoginWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithEmailAndPasswordImpl>
    implements _$$LoginWithEmailAndPasswordImplCopyWith<$Res> {
  __$$LoginWithEmailAndPasswordImplCopyWithImpl(
      _$LoginWithEmailAndPasswordImpl _value,
      $Res Function(_$LoginWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginWithEmailAndPasswordImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginWithEmailAndPasswordImpl implements LoginWithEmailAndPassword {
  const _$LoginWithEmailAndPasswordImpl(this.context,
      {required this.email, required this.password});

  @override
  final BuildContext context;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmailAndPassword(context: $context, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailAndPasswordImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailAndPasswordImplCopyWith<_$LoginWithEmailAndPasswordImpl>
      get copyWith => __$$LoginWithEmailAndPasswordImplCopyWithImpl<
          _$LoginWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return loginWithEmailAndPassword(context, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return loginWithEmailAndPassword?.call(context, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(context, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) {
    return loginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPassword implements AuthEvent {
  const factory LoginWithEmailAndPassword(final BuildContext context,
      {required final String email,
      required final String password}) = _$LoginWithEmailAndPasswordImpl;

  BuildContext get context;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginWithEmailAndPasswordImplCopyWith<_$LoginWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithGoogleImplCopyWith<$Res> {
  factory _$$LoginWithGoogleImplCopyWith(_$LoginWithGoogleImpl value,
          $Res Function(_$LoginWithGoogleImpl) then) =
      __$$LoginWithGoogleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$LoginWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithGoogleImpl>
    implements _$$LoginWithGoogleImplCopyWith<$Res> {
  __$$LoginWithGoogleImplCopyWithImpl(
      _$LoginWithGoogleImpl _value, $Res Function(_$LoginWithGoogleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$LoginWithGoogleImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginWithGoogleImpl implements LoginWithGoogle {
  const _$LoginWithGoogleImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.loginWithGoogle(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithGoogleImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithGoogleImplCopyWith<_$LoginWithGoogleImpl> get copyWith =>
      __$$LoginWithGoogleImplCopyWithImpl<_$LoginWithGoogleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return loginWithGoogle(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return loginWithGoogle?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class LoginWithGoogle implements AuthEvent {
  const factory LoginWithGoogle(final BuildContext context) =
      _$LoginWithGoogleImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LoginWithGoogleImplCopyWith<_$LoginWithGoogleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$LogoutImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.logout(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutImplCopyWith<_$LogoutImpl> get copyWith =>
      __$$LogoutImplCopyWithImpl<_$LogoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return logout(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return logout?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout(final BuildContext context) = _$LogoutImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LogoutImplCopyWith<_$LogoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitStateChangeImplCopyWith<$Res> {
  factory _$$InitStateChangeImplCopyWith(_$InitStateChangeImpl value,
          $Res Function(_$InitStateChangeImpl) then) =
      __$$InitStateChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$InitStateChangeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitStateChangeImpl>
    implements _$$InitStateChangeImplCopyWith<$Res> {
  __$$InitStateChangeImplCopyWithImpl(
      _$InitStateChangeImpl _value, $Res Function(_$InitStateChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$InitStateChangeImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$InitStateChangeImpl implements InitStateChange {
  const _$InitStateChangeImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.initStateChange(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitStateChangeImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitStateChangeImplCopyWith<_$InitStateChangeImpl> get copyWith =>
      __$$InitStateChangeImplCopyWithImpl<_$InitStateChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return initStateChange(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return initStateChange?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (initStateChange != null) {
      return initStateChange(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return initStateChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) {
    return initStateChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (initStateChange != null) {
      return initStateChange(this);
    }
    return orElse();
  }
}

abstract class InitStateChange implements AuthEvent {
  const factory InitStateChange(final BuildContext context) =
      _$InitStateChangeImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$InitStateChangeImplCopyWith<_$InitStateChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserImpl implements UpdateUser {
  const _$UpdateUserImpl();

  @override
  String toString() {
    return 'AuthEvent.updateUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return updateUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return updateUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUser implements AuthEvent {
  const factory UpdateUser() = _$UpdateUserImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements ForgotPassword {
  const _$ForgotPasswordImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            BuildContext context, String name, String email, String password)
        register,
    required TResult Function(
            BuildContext context, String email, String password)
        loginWithEmailAndPassword,
    required TResult Function(BuildContext context) loginWithGoogle,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context) initStateChange,
    required TResult Function() updateUser,
    required TResult Function(String email) forgotPassword,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult? Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult? Function(BuildContext context)? loginWithGoogle,
    TResult? Function(BuildContext context)? logout,
    TResult? Function(BuildContext context)? initStateChange,
    TResult? Function()? updateUser,
    TResult? Function(String email)? forgotPassword,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            BuildContext context, String name, String email, String password)?
        register,
    TResult Function(BuildContext context, String email, String password)?
        loginWithEmailAndPassword,
    TResult Function(BuildContext context)? loginWithGoogle,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context)? initStateChange,
    TResult Function()? updateUser,
    TResult Function(String email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Register value) register,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(Logout value) logout,
    required TResult Function(InitStateChange value) initStateChange,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ForgotPassword value) forgotPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Register value)? register,
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(Logout value)? logout,
    TResult? Function(InitStateChange value)? initStateChange,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ForgotPassword value)? forgotPassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Register value)? register,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(Logout value)? logout,
    TResult Function(InitStateChange value)? initStateChange,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword implements AuthEvent {
  const factory ForgotPassword(final String email) = _$ForgotPasswordImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  UserModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$InitialImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.user});

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'AuthState(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial({final UserModel? user}) = _$InitialImpl;

  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
