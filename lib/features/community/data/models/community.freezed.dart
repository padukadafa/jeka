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

Community _$CommunityFromJson(Map<String, dynamic> json) {
  return _Community.fromJson(json);
}

/// @nodoc
mixin _$Community {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get regency => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get xTwitter => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  List<CommunityMember> get members => throw _privateConstructorUsedError;
  List<String> get membersId => throw _privateConstructorUsedError;
  List<String> get rules => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get events => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Community to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityCopyWith<Community> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) then) =
      _$CommunityCopyWithImpl<$Res, Community>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String desc,
      String? logo,
      String? regency,
      String? province,
      String? xTwitter,
      String? instagram,
      String? location,
      List<String> types,
      List<CommunityMember> members,
      List<String> membersId,
      List<String> rules,
      List<Map<String, dynamic>> events,
      DateTime? createdAt});
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res, $Val extends Community>
    implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? desc = null,
    Object? logo = freezed,
    Object? regency = freezed,
    Object? province = freezed,
    Object? xTwitter = freezed,
    Object? instagram = freezed,
    Object? location = freezed,
    Object? types = null,
    Object? members = null,
    Object? membersId = null,
    Object? rules = null,
    Object? events = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      regency: freezed == regency
          ? _value.regency
          : regency // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
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
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<CommunityMember>,
      membersId: null == membersId
          ? _value.membersId
          : membersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {String? id,
      String name,
      String desc,
      String? logo,
      String? regency,
      String? province,
      String? xTwitter,
      String? instagram,
      String? location,
      List<String> types,
      List<CommunityMember> members,
      List<String> membersId,
      List<String> rules,
      List<Map<String, dynamic>> events,
      DateTime? createdAt});
}

/// @nodoc
class __$$CommunityImplCopyWithImpl<$Res>
    extends _$CommunityCopyWithImpl<$Res, _$CommunityImpl>
    implements _$$CommunityImplCopyWith<$Res> {
  __$$CommunityImplCopyWithImpl(
      _$CommunityImpl _value, $Res Function(_$CommunityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? desc = null,
    Object? logo = freezed,
    Object? regency = freezed,
    Object? province = freezed,
    Object? xTwitter = freezed,
    Object? instagram = freezed,
    Object? location = freezed,
    Object? types = null,
    Object? members = null,
    Object? membersId = null,
    Object? rules = null,
    Object? events = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$CommunityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      regency: freezed == regency
          ? _value.regency
          : regency // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
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
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<CommunityMember>,
      membersId: null == membersId
          ? _value._membersId
          : membersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityImpl implements _Community {
  const _$CommunityImpl(
      {this.id,
      required this.name,
      required this.desc,
      this.logo,
      this.regency,
      this.province,
      this.xTwitter,
      this.instagram,
      this.location,
      final List<String> types = const [],
      final List<CommunityMember> members = const [],
      final List<String> membersId = const [],
      final List<String> rules = const [],
      final List<Map<String, dynamic>> events = const [],
      this.createdAt})
      : _types = types,
        _members = members,
        _membersId = membersId,
        _rules = rules,
        _events = events;

  factory _$CommunityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String desc;
  @override
  final String? logo;
  @override
  final String? regency;
  @override
  final String? province;
  @override
  final String? xTwitter;
  @override
  final String? instagram;
  @override
  final String? location;
  final List<String> _types;
  @override
  @JsonKey()
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<CommunityMember> _members;
  @override
  @JsonKey()
  List<CommunityMember> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<String> _membersId;
  @override
  @JsonKey()
  List<String> get membersId {
    if (_membersId is EqualUnmodifiableListView) return _membersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersId);
  }

  final List<String> _rules;
  @override
  @JsonKey()
  List<String> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  final List<Map<String, dynamic>> _events;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Community(id: $id, name: $name, desc: $desc, logo: $logo, regency: $regency, province: $province, xTwitter: $xTwitter, instagram: $instagram, location: $location, types: $types, members: $members, membersId: $membersId, rules: $rules, events: $events, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.regency, regency) || other.regency == regency) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.xTwitter, xTwitter) ||
                other.xTwitter == xTwitter) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._membersId, _membersId) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      desc,
      logo,
      regency,
      province,
      xTwitter,
      instagram,
      location,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_membersId),
      const DeepCollectionEquality().hash(_rules),
      const DeepCollectionEquality().hash(_events),
      createdAt);

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityImplCopyWith<_$CommunityImpl> get copyWith =>
      __$$CommunityImplCopyWithImpl<_$CommunityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityImplToJson(
      this,
    );
  }
}

abstract class _Community implements Community {
  const factory _Community(
      {final String? id,
      required final String name,
      required final String desc,
      final String? logo,
      final String? regency,
      final String? province,
      final String? xTwitter,
      final String? instagram,
      final String? location,
      final List<String> types,
      final List<CommunityMember> members,
      final List<String> membersId,
      final List<String> rules,
      final List<Map<String, dynamic>> events,
      final DateTime? createdAt}) = _$CommunityImpl;

  factory _Community.fromJson(Map<String, dynamic> json) =
      _$CommunityImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get desc;
  @override
  String? get logo;
  @override
  String? get regency;
  @override
  String? get province;
  @override
  String? get xTwitter;
  @override
  String? get instagram;
  @override
  String? get location;
  @override
  List<String> get types;
  @override
  List<CommunityMember> get members;
  @override
  List<String> get membersId;
  @override
  List<String> get rules;
  @override
  List<Map<String, dynamic>> get events;
  @override
  DateTime? get createdAt;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityImplCopyWith<_$CommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommunityMember _$CommunityMemberFromJson(Map<String, dynamic> json) {
  return _CommunityMember.fromJson(json);
}

/// @nodoc
mixin _$CommunityMember {
  String? get userId => throw _privateConstructorUsedError;
  DateTime? get joinedAt => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this CommunityMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityMemberCopyWith<CommunityMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityMemberCopyWith<$Res> {
  factory $CommunityMemberCopyWith(
          CommunityMember value, $Res Function(CommunityMember) then) =
      _$CommunityMemberCopyWithImpl<$Res, CommunityMember>;
  @useResult
  $Res call({String? userId, DateTime? joinedAt, String? role, String? name});
}

/// @nodoc
class _$CommunityMemberCopyWithImpl<$Res, $Val extends CommunityMember>
    implements $CommunityMemberCopyWith<$Res> {
  _$CommunityMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? joinedAt = freezed,
    Object? role = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityMemberImplCopyWith<$Res>
    implements $CommunityMemberCopyWith<$Res> {
  factory _$$CommunityMemberImplCopyWith(_$CommunityMemberImpl value,
          $Res Function(_$CommunityMemberImpl) then) =
      __$$CommunityMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, DateTime? joinedAt, String? role, String? name});
}

/// @nodoc
class __$$CommunityMemberImplCopyWithImpl<$Res>
    extends _$CommunityMemberCopyWithImpl<$Res, _$CommunityMemberImpl>
    implements _$$CommunityMemberImplCopyWith<$Res> {
  __$$CommunityMemberImplCopyWithImpl(
      _$CommunityMemberImpl _value, $Res Function(_$CommunityMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? joinedAt = freezed,
    Object? role = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CommunityMemberImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityMemberImpl implements _CommunityMember {
  const _$CommunityMemberImpl(
      {this.userId, this.joinedAt, this.role, this.name});

  factory _$CommunityMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityMemberImplFromJson(json);

  @override
  final String? userId;
  @override
  final DateTime? joinedAt;
  @override
  final String? role;
  @override
  final String? name;

  @override
  String toString() {
    return 'CommunityMember(userId: $userId, joinedAt: $joinedAt, role: $role, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityMemberImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, joinedAt, role, name);

  /// Create a copy of CommunityMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityMemberImplCopyWith<_$CommunityMemberImpl> get copyWith =>
      __$$CommunityMemberImplCopyWithImpl<_$CommunityMemberImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityMemberImplToJson(
      this,
    );
  }
}

abstract class _CommunityMember implements CommunityMember {
  const factory _CommunityMember(
      {final String? userId,
      final DateTime? joinedAt,
      final String? role,
      final String? name}) = _$CommunityMemberImpl;

  factory _CommunityMember.fromJson(Map<String, dynamic> json) =
      _$CommunityMemberImpl.fromJson;

  @override
  String? get userId;
  @override
  DateTime? get joinedAt;
  @override
  String? get role;
  @override
  String? get name;

  /// Create a copy of CommunityMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityMemberImplCopyWith<_$CommunityMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
