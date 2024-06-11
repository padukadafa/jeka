// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Community {
  String get name => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String? get xTwitter => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityCopyWith<Community> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) then) =
      _$CommunityCopyWithImpl<$Res, Community>;
  @useResult
  $Res call(
      {String name,
      String desc,
      String logo,
      String? xTwitter,
      String? instagram,
      String? location,
      List<String> tags,
      List<Map<String, dynamic>> members});
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res, $Val extends Community>
    implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? desc = null,
    Object? logo = null,
    Object? xTwitter = freezed,
    Object? instagram = freezed,
    Object? location = freezed,
    Object? tags = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      xTwitter: freezed == xTwitter
          ? _value.xTwitter
          : xTwitter // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityImplCopyWith<$Res>
    implements $CommunityCopyWith<$Res> {
  factory _$$CommunityImplCopyWith(
          _$CommunityImpl value, $Res Function(_$CommunityImpl) then) =
      __$$CommunityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String desc,
      String logo,
      String? xTwitter,
      String? instagram,
      String? location,
      List<String> tags,
      List<Map<String, dynamic>> members});
}

/// @nodoc
class __$$CommunityImplCopyWithImpl<$Res>
    extends _$CommunityCopyWithImpl<$Res, _$CommunityImpl>
    implements _$$CommunityImplCopyWith<$Res> {
  __$$CommunityImplCopyWithImpl(
      _$CommunityImpl _value, $Res Function(_$CommunityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? desc = null,
    Object? logo = null,
    Object? xTwitter = freezed,
    Object? instagram = freezed,
    Object? location = freezed,
    Object? tags = null,
    Object? members = null,
  }) {
    return _then(_$CommunityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      xTwitter: freezed == xTwitter
          ? _value.xTwitter
          : xTwitter // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$CommunityImpl implements _Community {
  const _$CommunityImpl(
      {required this.name,
      required this.desc,
      required this.logo,
      this.xTwitter,
      this.instagram,
      this.location,
      final List<String> tags = const [],
      final List<Map<String, dynamic>> members = const []})
      : _tags = tags,
        _members = members;

  @override
  final String name;
  @override
  final String desc;
  @override
  final String logo;
  @override
  final String? xTwitter;
  @override
  final String? instagram;
  @override
  final String? location;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<Map<String, dynamic>> _members;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'Community(name: $name, desc: $desc, logo: $logo, xTwitter: $xTwitter, instagram: $instagram, location: $location, tags: $tags, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.xTwitter, xTwitter) ||
                other.xTwitter == xTwitter) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      desc,
      logo,
      xTwitter,
      instagram,
      location,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityImplCopyWith<_$CommunityImpl> get copyWith =>
      __$$CommunityImplCopyWithImpl<_$CommunityImpl>(this, _$identity);
}

abstract class _Community implements Community {
  const factory _Community(
      {required final String name,
      required final String desc,
      required final String logo,
      final String? xTwitter,
      final String? instagram,
      final String? location,
      final List<String> tags,
      final List<Map<String, dynamic>> members}) = _$CommunityImpl;

  @override
  String get name;
  @override
  String get desc;
  @override
  String get logo;
  @override
  String? get xTwitter;
  @override
  String? get instagram;
  @override
  String? get location;
  @override
  List<String> get tags;
  @override
  List<Map<String, dynamic>> get members;
  @override
  @JsonKey(ignore: true)
  _$$CommunityImplCopyWith<_$CommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
