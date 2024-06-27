// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommunityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityEventCopyWith<$Res> {
  factory $CommunityEventCopyWith(
          CommunityEvent value, $Res Function(CommunityEvent) then) =
      _$CommunityEventCopyWithImpl<$Res, CommunityEvent>;
}

/// @nodoc
class _$CommunityEventCopyWithImpl<$Res, $Val extends CommunityEvent>
    implements $CommunityEventCopyWith<$Res> {
  _$CommunityEventCopyWithImpl(this._value, this._then);

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
    extends _$CommunityEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CommunityEvent.started()';
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
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
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
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommunityEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$CommunityEventCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangePageImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageImpl implements ChangePage {
  const _$ChangePageImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CommunityEvent.changePage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) {
    return changePage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) {
    return changePage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class ChangePage implements CommunityEvent {
  const factory ChangePage(final int index) = _$ChangePageImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCommunityTabImplCopyWith<$Res> {
  factory _$$ChangeCommunityTabImplCopyWith(_$ChangeCommunityTabImpl value,
          $Res Function(_$ChangeCommunityTabImpl) then) =
      __$$ChangeCommunityTabImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeCommunityTabImplCopyWithImpl<$Res>
    extends _$CommunityEventCopyWithImpl<$Res, _$ChangeCommunityTabImpl>
    implements _$$ChangeCommunityTabImplCopyWith<$Res> {
  __$$ChangeCommunityTabImplCopyWithImpl(_$ChangeCommunityTabImpl _value,
      $Res Function(_$ChangeCommunityTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeCommunityTabImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCommunityTabImpl implements ChangeCommunityTab {
  const _$ChangeCommunityTabImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CommunityEvent.changeCommunityTab(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCommunityTabImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCommunityTabImplCopyWith<_$ChangeCommunityTabImpl> get copyWith =>
      __$$ChangeCommunityTabImplCopyWithImpl<_$ChangeCommunityTabImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) {
    return changeCommunityTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) {
    return changeCommunityTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
    required TResult orElse(),
  }) {
    if (changeCommunityTab != null) {
      return changeCommunityTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) {
    return changeCommunityTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) {
    return changeCommunityTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) {
    if (changeCommunityTab != null) {
      return changeCommunityTab(this);
    }
    return orElse();
  }
}

abstract class ChangeCommunityTab implements CommunityEvent {
  const factory ChangeCommunityTab(final int index) = _$ChangeCommunityTabImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeCommunityTabImplCopyWith<_$ChangeCommunityTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCommunityListImplCopyWith<$Res> {
  factory _$$UpdateCommunityListImplCopyWith(_$UpdateCommunityListImpl value,
          $Res Function(_$UpdateCommunityListImpl) then) =
      __$$UpdateCommunityListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$UpdateCommunityListImplCopyWithImpl<$Res>
    extends _$CommunityEventCopyWithImpl<$Res, _$UpdateCommunityListImpl>
    implements _$$UpdateCommunityListImplCopyWith<$Res> {
  __$$UpdateCommunityListImplCopyWithImpl(_$UpdateCommunityListImpl _value,
      $Res Function(_$UpdateCommunityListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$UpdateCommunityListImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$UpdateCommunityListImpl implements UpdateCommunityList {
  const _$UpdateCommunityListImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CommunityEvent.updateCommunityList(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCommunityListImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCommunityListImplCopyWith<_$UpdateCommunityListImpl> get copyWith =>
      __$$UpdateCommunityListImplCopyWithImpl<_$UpdateCommunityListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) {
    return updateCommunityList(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) {
    return updateCommunityList?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
    required TResult orElse(),
  }) {
    if (updateCommunityList != null) {
      return updateCommunityList(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) {
    return updateCommunityList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) {
    return updateCommunityList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) {
    if (updateCommunityList != null) {
      return updateCommunityList(this);
    }
    return orElse();
  }
}

abstract class UpdateCommunityList implements CommunityEvent {
  const factory UpdateCommunityList(final BuildContext context) =
      _$UpdateCommunityListImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$UpdateCommunityListImplCopyWith<_$UpdateCommunityListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCommunityImplCopyWith<$Res> {
  factory _$$ChangeCommunityImplCopyWith(_$ChangeCommunityImpl value,
          $Res Function(_$ChangeCommunityImpl) then) =
      __$$ChangeCommunityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String communityId});
}

/// @nodoc
class __$$ChangeCommunityImplCopyWithImpl<$Res>
    extends _$CommunityEventCopyWithImpl<$Res, _$ChangeCommunityImpl>
    implements _$$ChangeCommunityImplCopyWith<$Res> {
  __$$ChangeCommunityImplCopyWithImpl(
      _$ChangeCommunityImpl _value, $Res Function(_$ChangeCommunityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = null,
  }) {
    return _then(_$ChangeCommunityImpl(
      null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeCommunityImpl implements ChangeCommunity {
  const _$ChangeCommunityImpl(this.communityId);

  @override
  final String communityId;

  @override
  String toString() {
    return 'CommunityEvent.changeCommunity(communityId: $communityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCommunityImpl &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCommunityImplCopyWith<_$ChangeCommunityImpl> get copyWith =>
      __$$ChangeCommunityImplCopyWithImpl<_$ChangeCommunityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) {
    return changeCommunity(communityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) {
    return changeCommunity?.call(communityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
    required TResult orElse(),
  }) {
    if (changeCommunity != null) {
      return changeCommunity(communityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) {
    return changeCommunity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) {
    return changeCommunity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) {
    if (changeCommunity != null) {
      return changeCommunity(this);
    }
    return orElse();
  }
}

abstract class ChangeCommunity implements CommunityEvent {
  const factory ChangeCommunity(final String communityId) =
      _$ChangeCommunityImpl;

  String get communityId;
  @JsonKey(ignore: true)
  _$$ChangeCommunityImplCopyWith<_$ChangeCommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinCommunityImplCopyWith<$Res> {
  factory _$$JoinCommunityImplCopyWith(
          _$JoinCommunityImpl value, $Res Function(_$JoinCommunityImpl) then) =
      __$$JoinCommunityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String communityId, void Function(Community)? onDone});
}

/// @nodoc
class __$$JoinCommunityImplCopyWithImpl<$Res>
    extends _$CommunityEventCopyWithImpl<$Res, _$JoinCommunityImpl>
    implements _$$JoinCommunityImplCopyWith<$Res> {
  __$$JoinCommunityImplCopyWithImpl(
      _$JoinCommunityImpl _value, $Res Function(_$JoinCommunityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = null,
    Object? onDone = freezed,
  }) {
    return _then(_$JoinCommunityImpl(
      null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      onDone: freezed == onDone
          ? _value.onDone
          : onDone // ignore: cast_nullable_to_non_nullable
              as void Function(Community)?,
    ));
  }
}

/// @nodoc

class _$JoinCommunityImpl implements JoinCommunity {
  const _$JoinCommunityImpl(this.communityId, {this.onDone});

  @override
  final String communityId;
  @override
  final void Function(Community)? onDone;

  @override
  String toString() {
    return 'CommunityEvent.joinCommunity(communityId: $communityId, onDone: $onDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinCommunityImpl &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.onDone, onDone) || other.onDone == onDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityId, onDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinCommunityImplCopyWith<_$JoinCommunityImpl> get copyWith =>
      __$$JoinCommunityImplCopyWithImpl<_$JoinCommunityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) {
    return joinCommunity(communityId, onDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) {
    return joinCommunity?.call(communityId, onDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
    required TResult orElse(),
  }) {
    if (joinCommunity != null) {
      return joinCommunity(communityId, onDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) {
    return joinCommunity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) {
    return joinCommunity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) {
    if (joinCommunity != null) {
      return joinCommunity(this);
    }
    return orElse();
  }
}

abstract class JoinCommunity implements CommunityEvent {
  const factory JoinCommunity(final String communityId,
      {final void Function(Community)? onDone}) = _$JoinCommunityImpl;

  String get communityId;
  void Function(Community)? get onDone;
  @JsonKey(ignore: true)
  _$$JoinCommunityImplCopyWith<_$JoinCommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveCommunityImplCopyWith<$Res> {
  factory _$$LeaveCommunityImplCopyWith(_$LeaveCommunityImpl value,
          $Res Function(_$LeaveCommunityImpl) then) =
      __$$LeaveCommunityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String communityId, void Function(Community)? onDone});
}

/// @nodoc
class __$$LeaveCommunityImplCopyWithImpl<$Res>
    extends _$CommunityEventCopyWithImpl<$Res, _$LeaveCommunityImpl>
    implements _$$LeaveCommunityImplCopyWith<$Res> {
  __$$LeaveCommunityImplCopyWithImpl(
      _$LeaveCommunityImpl _value, $Res Function(_$LeaveCommunityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = null,
    Object? onDone = freezed,
  }) {
    return _then(_$LeaveCommunityImpl(
      null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      onDone: freezed == onDone
          ? _value.onDone
          : onDone // ignore: cast_nullable_to_non_nullable
              as void Function(Community)?,
    ));
  }
}

/// @nodoc

class _$LeaveCommunityImpl implements LeaveCommunity {
  const _$LeaveCommunityImpl(this.communityId, {this.onDone});

  @override
  final String communityId;
  @override
  final void Function(Community)? onDone;

  @override
  String toString() {
    return 'CommunityEvent.leaveCommunity(communityId: $communityId, onDone: $onDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveCommunityImpl &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.onDone, onDone) || other.onDone == onDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityId, onDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveCommunityImplCopyWith<_$LeaveCommunityImpl> get copyWith =>
      __$$LeaveCommunityImplCopyWithImpl<_$LeaveCommunityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) {
    return leaveCommunity(communityId, onDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) {
    return leaveCommunity?.call(communityId, onDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
    required TResult orElse(),
  }) {
    if (leaveCommunity != null) {
      return leaveCommunity(communityId, onDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) {
    return leaveCommunity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) {
    return leaveCommunity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) {
    if (leaveCommunity != null) {
      return leaveCommunity(this);
    }
    return orElse();
  }
}

abstract class LeaveCommunity implements CommunityEvent {
  const factory LeaveCommunity(final String communityId,
      {final void Function(Community)? onDone}) = _$LeaveCommunityImpl;

  String get communityId;
  void Function(Community)? get onDone;
  @JsonKey(ignore: true)
  _$$LeaveCommunityImplCopyWith<_$LeaveCommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePostCommentImplCopyWith<$Res> {
  factory _$$CreatePostCommentImplCopyWith(_$CreatePostCommentImpl value,
          $Res Function(_$CreatePostCommentImpl) then) =
      __$$CreatePostCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      PostComment comment,
      Post post,
      void Function(Post)? onDone});

  $PostCommentCopyWith<$Res> get comment;
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$CreatePostCommentImplCopyWithImpl<$Res>
    extends _$CommunityEventCopyWithImpl<$Res, _$CreatePostCommentImpl>
    implements _$$CreatePostCommentImplCopyWith<$Res> {
  __$$CreatePostCommentImplCopyWithImpl(_$CreatePostCommentImpl _value,
      $Res Function(_$CreatePostCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? comment = null,
    Object? post = null,
    Object? onDone = freezed,
  }) {
    return _then(_$CreatePostCommentImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as PostComment,
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      onDone: freezed == onDone
          ? _value.onDone
          : onDone // ignore: cast_nullable_to_non_nullable
              as void Function(Post)?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCommentCopyWith<$Res> get comment {
    return $PostCommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$CreatePostCommentImpl implements CreatePostComment {
  const _$CreatePostCommentImpl(this.context, this.comment, this.post,
      {this.onDone});

  @override
  final BuildContext context;
  @override
  final PostComment comment;
  @override
  final Post post;
  @override
  final void Function(Post)? onDone;

  @override
  String toString() {
    return 'CommunityEvent.createPostComment(context: $context, comment: $comment, post: $post, onDone: $onDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostCommentImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.onDone, onDone) || other.onDone == onDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, comment, post, onDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostCommentImplCopyWith<_$CreatePostCommentImpl> get copyWith =>
      __$$CreatePostCommentImplCopyWithImpl<_$CreatePostCommentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(int index) changeCommunityTab,
    required TResult Function(BuildContext context) updateCommunityList,
    required TResult Function(String communityId) changeCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        joinCommunity,
    required TResult Function(
            String communityId, void Function(Community)? onDone)
        leaveCommunity,
    required TResult Function(BuildContext context, PostComment comment,
            Post post, void Function(Post)? onDone)
        createPostComment,
  }) {
    return createPostComment(context, comment, post, onDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(int index)? changeCommunityTab,
    TResult? Function(BuildContext context)? updateCommunityList,
    TResult? Function(String communityId)? changeCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult? Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult? Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
  }) {
    return createPostComment?.call(context, comment, post, onDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(int index)? changeCommunityTab,
    TResult Function(BuildContext context)? updateCommunityList,
    TResult Function(String communityId)? changeCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        joinCommunity,
    TResult Function(String communityId, void Function(Community)? onDone)?
        leaveCommunity,
    TResult Function(BuildContext context, PostComment comment, Post post,
            void Function(Post)? onDone)?
        createPostComment,
    required TResult orElse(),
  }) {
    if (createPostComment != null) {
      return createPostComment(context, comment, post, onDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(ChangeCommunityTab value) changeCommunityTab,
    required TResult Function(UpdateCommunityList value) updateCommunityList,
    required TResult Function(ChangeCommunity value) changeCommunity,
    required TResult Function(JoinCommunity value) joinCommunity,
    required TResult Function(LeaveCommunity value) leaveCommunity,
    required TResult Function(CreatePostComment value) createPostComment,
  }) {
    return createPostComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult? Function(UpdateCommunityList value)? updateCommunityList,
    TResult? Function(ChangeCommunity value)? changeCommunity,
    TResult? Function(JoinCommunity value)? joinCommunity,
    TResult? Function(LeaveCommunity value)? leaveCommunity,
    TResult? Function(CreatePostComment value)? createPostComment,
  }) {
    return createPostComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePage value)? changePage,
    TResult Function(ChangeCommunityTab value)? changeCommunityTab,
    TResult Function(UpdateCommunityList value)? updateCommunityList,
    TResult Function(ChangeCommunity value)? changeCommunity,
    TResult Function(JoinCommunity value)? joinCommunity,
    TResult Function(LeaveCommunity value)? leaveCommunity,
    TResult Function(CreatePostComment value)? createPostComment,
    required TResult orElse(),
  }) {
    if (createPostComment != null) {
      return createPostComment(this);
    }
    return orElse();
  }
}

abstract class CreatePostComment implements CommunityEvent {
  const factory CreatePostComment(
      final BuildContext context, final PostComment comment, final Post post,
      {final void Function(Post)? onDone}) = _$CreatePostCommentImpl;

  BuildContext get context;
  PostComment get comment;
  Post get post;
  void Function(Post)? get onDone;
  @JsonKey(ignore: true)
  _$$CreatePostCommentImplCopyWith<_$CreatePostCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommunityState {
  int get tabIndex => throw _privateConstructorUsedError;
  Community? get community => throw _privateConstructorUsedError;
  int get communityTabIndex => throw _privateConstructorUsedError;
  List<Community> get communities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex, Community? community,
            int communityTabIndex, List<Community> communities)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex, Community? community, int communityTabIndex,
            List<Community> communities)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex, Community? community, int communityTabIndex,
            List<Community> communities)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityStateCopyWith<CommunityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityStateCopyWith<$Res> {
  factory $CommunityStateCopyWith(
          CommunityState value, $Res Function(CommunityState) then) =
      _$CommunityStateCopyWithImpl<$Res, CommunityState>;
  @useResult
  $Res call(
      {int tabIndex,
      Community? community,
      int communityTabIndex,
      List<Community> communities});

  $CommunityCopyWith<$Res>? get community;
}

/// @nodoc
class _$CommunityStateCopyWithImpl<$Res, $Val extends CommunityState>
    implements $CommunityStateCopyWith<$Res> {
  _$CommunityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? community = freezed,
    Object? communityTabIndex = null,
    Object? communities = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      community: freezed == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      communityTabIndex: null == communityTabIndex
          ? _value.communityTabIndex
          : communityTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      communities: null == communities
          ? _value.communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<Community>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res>? get community {
    if (_value.community == null) {
      return null;
    }

    return $CommunityCopyWith<$Res>(_value.community!, (value) {
      return _then(_value.copyWith(community: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CommunityStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int tabIndex,
      Community? community,
      int communityTabIndex,
      List<Community> communities});

  @override
  $CommunityCopyWith<$Res>? get community;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CommunityStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? community = freezed,
    Object? communityTabIndex = null,
    Object? communities = null,
  }) {
    return _then(_$InitialImpl(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      community: freezed == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      communityTabIndex: null == communityTabIndex
          ? _value.communityTabIndex
          : communityTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      communities: null == communities
          ? _value._communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<Community>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.tabIndex = 0,
      this.community,
      this.communityTabIndex = 0,
      final List<Community> communities = const []})
      : _communities = communities;

  @override
  @JsonKey()
  final int tabIndex;
  @override
  final Community? community;
  @override
  @JsonKey()
  final int communityTabIndex;
  final List<Community> _communities;
  @override
  @JsonKey()
  List<Community> get communities {
    if (_communities is EqualUnmodifiableListView) return _communities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_communities);
  }

  @override
  String toString() {
    return 'CommunityState.initial(tabIndex: $tabIndex, community: $community, communityTabIndex: $communityTabIndex, communities: $communities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.communityTabIndex, communityTabIndex) ||
                other.communityTabIndex == communityTabIndex) &&
            const DeepCollectionEquality()
                .equals(other._communities, _communities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex, community,
      communityTabIndex, const DeepCollectionEquality().hash(_communities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex, Community? community,
            int communityTabIndex, List<Community> communities)
        initial,
  }) {
    return initial(tabIndex, community, communityTabIndex, communities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex, Community? community, int communityTabIndex,
            List<Community> communities)?
        initial,
  }) {
    return initial?.call(tabIndex, community, communityTabIndex, communities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex, Community? community, int communityTabIndex,
            List<Community> communities)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tabIndex, community, communityTabIndex, communities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommunityState {
  const factory _Initial(
      {final int tabIndex,
      final Community? community,
      final int communityTabIndex,
      final List<Community> communities}) = _$InitialImpl;

  @override
  int get tabIndex;
  @override
  Community? get community;
  @override
  int get communityTabIndex;
  @override
  List<Community> get communities;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
