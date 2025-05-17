// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get eventVisibility => throw _privateConstructorUsedError;
  String? get eventDesc => throw _privateConstructorUsedError;
  EventLocation? get eventLocation => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  List<EventAttachment> get attachments => throw _privateConstructorUsedError;
  List<EventParticipant> get participants => throw _privateConstructorUsedError;
  List<String> get participantsId => throw _privateConstructorUsedError;
  List<EventCollaboration> get collaboration =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? eventVisibility,
      String? eventDesc,
      EventLocation? eventLocation,
      DateTime? time,
      List<EventAttachment> attachments,
      List<EventParticipant> participants,
      List<String> participantsId,
      List<EventCollaboration> collaboration,
      DateTime? createdAt});

  $EventLocationCopyWith<$Res>? get eventLocation;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? eventVisibility = freezed,
    Object? eventDesc = freezed,
    Object? eventLocation = freezed,
    Object? time = freezed,
    Object? attachments = null,
    Object? participants = null,
    Object? participantsId = null,
    Object? collaboration = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      eventVisibility: freezed == eventVisibility
          ? _value.eventVisibility
          : eventVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDesc: freezed == eventDesc
          ? _value.eventDesc
          : eventDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      eventLocation: freezed == eventLocation
          ? _value.eventLocation
          : eventLocation // ignore: cast_nullable_to_non_nullable
              as EventLocation?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<EventAttachment>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<EventParticipant>,
      participantsId: null == participantsId
          ? _value.participantsId
          : participantsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      collaboration: null == collaboration
          ? _value.collaboration
          : collaboration // ignore: cast_nullable_to_non_nullable
              as List<EventCollaboration>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventLocationCopyWith<$Res>? get eventLocation {
    if (_value.eventLocation == null) {
      return null;
    }

    return $EventLocationCopyWith<$Res>(_value.eventLocation!, (value) {
      return _then(_value.copyWith(eventLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? eventVisibility,
      String? eventDesc,
      EventLocation? eventLocation,
      DateTime? time,
      List<EventAttachment> attachments,
      List<EventParticipant> participants,
      List<String> participantsId,
      List<EventCollaboration> collaboration,
      DateTime? createdAt});

  @override
  $EventLocationCopyWith<$Res>? get eventLocation;
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? eventVisibility = freezed,
    Object? eventDesc = freezed,
    Object? eventLocation = freezed,
    Object? time = freezed,
    Object? attachments = null,
    Object? participants = null,
    Object? participantsId = null,
    Object? collaboration = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$EventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      eventVisibility: freezed == eventVisibility
          ? _value.eventVisibility
          : eventVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDesc: freezed == eventDesc
          ? _value.eventDesc
          : eventDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      eventLocation: freezed == eventLocation
          ? _value.eventLocation
          : eventLocation // ignore: cast_nullable_to_non_nullable
              as EventLocation?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<EventAttachment>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<EventParticipant>,
      participantsId: null == participantsId
          ? _value._participantsId
          : participantsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      collaboration: null == collaboration
          ? _value._collaboration
          : collaboration // ignore: cast_nullable_to_non_nullable
              as List<EventCollaboration>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {this.id,
      this.title,
      this.eventVisibility,
      this.eventDesc,
      this.eventLocation,
      this.time,
      final List<EventAttachment> attachments = const [],
      final List<EventParticipant> participants = const [],
      final List<String> participantsId = const [],
      final List<EventCollaboration> collaboration = const [],
      this.createdAt})
      : _attachments = attachments,
        _participants = participants,
        _participantsId = participantsId,
        _collaboration = collaboration;

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? eventVisibility;
  @override
  final String? eventDesc;
  @override
  final EventLocation? eventLocation;
  @override
  final DateTime? time;
  final List<EventAttachment> _attachments;
  @override
  @JsonKey()
  List<EventAttachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  final List<EventParticipant> _participants;
  @override
  @JsonKey()
  List<EventParticipant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<String> _participantsId;
  @override
  @JsonKey()
  List<String> get participantsId {
    if (_participantsId is EqualUnmodifiableListView) return _participantsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantsId);
  }

  final List<EventCollaboration> _collaboration;
  @override
  @JsonKey()
  List<EventCollaboration> get collaboration {
    if (_collaboration is EqualUnmodifiableListView) return _collaboration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collaboration);
  }

  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Event(id: $id, title: $title, eventVisibility: $eventVisibility, eventDesc: $eventDesc, eventLocation: $eventLocation, time: $time, attachments: $attachments, participants: $participants, participantsId: $participantsId, collaboration: $collaboration, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.eventVisibility, eventVisibility) ||
                other.eventVisibility == eventVisibility) &&
            (identical(other.eventDesc, eventDesc) ||
                other.eventDesc == eventDesc) &&
            (identical(other.eventLocation, eventLocation) ||
                other.eventLocation == eventLocation) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._participantsId, _participantsId) &&
            const DeepCollectionEquality()
                .equals(other._collaboration, _collaboration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      eventVisibility,
      eventDesc,
      eventLocation,
      time,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_participantsId),
      const DeepCollectionEquality().hash(_collaboration),
      createdAt);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {final String? id,
      final String? title,
      final String? eventVisibility,
      final String? eventDesc,
      final EventLocation? eventLocation,
      final DateTime? time,
      final List<EventAttachment> attachments,
      final List<EventParticipant> participants,
      final List<String> participantsId,
      final List<EventCollaboration> collaboration,
      final DateTime? createdAt}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get eventVisibility;
  @override
  String? get eventDesc;
  @override
  EventLocation? get eventLocation;
  @override
  DateTime? get time;
  @override
  List<EventAttachment> get attachments;
  @override
  List<EventParticipant> get participants;
  @override
  List<String> get participantsId;
  @override
  List<EventCollaboration> get collaboration;
  @override
  DateTime? get createdAt;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventAttachment _$EventAttachmentFromJson(Map<String, dynamic> json) {
  return _EventAttachment.fromJson(json);
}

/// @nodoc
mixin _$EventAttachment {
  String? get attachmentLocation => throw _privateConstructorUsedError;
  String? get attachmentType => throw _privateConstructorUsedError;

  /// Serializes this EventAttachment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventAttachmentCopyWith<EventAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventAttachmentCopyWith<$Res> {
  factory $EventAttachmentCopyWith(
          EventAttachment value, $Res Function(EventAttachment) then) =
      _$EventAttachmentCopyWithImpl<$Res, EventAttachment>;
  @useResult
  $Res call({String? attachmentLocation, String? attachmentType});
}

/// @nodoc
class _$EventAttachmentCopyWithImpl<$Res, $Val extends EventAttachment>
    implements $EventAttachmentCopyWith<$Res> {
  _$EventAttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentLocation = freezed,
    Object? attachmentType = freezed,
  }) {
    return _then(_value.copyWith(
      attachmentLocation: freezed == attachmentLocation
          ? _value.attachmentLocation
          : attachmentLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentType: freezed == attachmentType
          ? _value.attachmentType
          : attachmentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventAttachmentImplCopyWith<$Res>
    implements $EventAttachmentCopyWith<$Res> {
  factory _$$EventAttachmentImplCopyWith(_$EventAttachmentImpl value,
          $Res Function(_$EventAttachmentImpl) then) =
      __$$EventAttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? attachmentLocation, String? attachmentType});
}

/// @nodoc
class __$$EventAttachmentImplCopyWithImpl<$Res>
    extends _$EventAttachmentCopyWithImpl<$Res, _$EventAttachmentImpl>
    implements _$$EventAttachmentImplCopyWith<$Res> {
  __$$EventAttachmentImplCopyWithImpl(
      _$EventAttachmentImpl _value, $Res Function(_$EventAttachmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentLocation = freezed,
    Object? attachmentType = freezed,
  }) {
    return _then(_$EventAttachmentImpl(
      attachmentLocation: freezed == attachmentLocation
          ? _value.attachmentLocation
          : attachmentLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentType: freezed == attachmentType
          ? _value.attachmentType
          : attachmentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventAttachmentImpl implements _EventAttachment {
  const _$EventAttachmentImpl({this.attachmentLocation, this.attachmentType});

  factory _$EventAttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventAttachmentImplFromJson(json);

  @override
  final String? attachmentLocation;
  @override
  final String? attachmentType;

  @override
  String toString() {
    return 'EventAttachment(attachmentLocation: $attachmentLocation, attachmentType: $attachmentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventAttachmentImpl &&
            (identical(other.attachmentLocation, attachmentLocation) ||
                other.attachmentLocation == attachmentLocation) &&
            (identical(other.attachmentType, attachmentType) ||
                other.attachmentType == attachmentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attachmentLocation, attachmentType);

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventAttachmentImplCopyWith<_$EventAttachmentImpl> get copyWith =>
      __$$EventAttachmentImplCopyWithImpl<_$EventAttachmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventAttachmentImplToJson(
      this,
    );
  }
}

abstract class _EventAttachment implements EventAttachment {
  const factory _EventAttachment(
      {final String? attachmentLocation,
      final String? attachmentType}) = _$EventAttachmentImpl;

  factory _EventAttachment.fromJson(Map<String, dynamic> json) =
      _$EventAttachmentImpl.fromJson;

  @override
  String? get attachmentLocation;
  @override
  String? get attachmentType;

  /// Create a copy of EventAttachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventAttachmentImplCopyWith<_$EventAttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventLocation _$EventLocationFromJson(Map<String, dynamic> json) {
  return _EventLocation.fromJson(json);
}

/// @nodoc
mixin _$EventLocation {
  String? get location => throw _privateConstructorUsedError;
  String? get locationType => throw _privateConstructorUsedError;

  /// Serializes this EventLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventLocationCopyWith<EventLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventLocationCopyWith<$Res> {
  factory $EventLocationCopyWith(
          EventLocation value, $Res Function(EventLocation) then) =
      _$EventLocationCopyWithImpl<$Res, EventLocation>;
  @useResult
  $Res call({String? location, String? locationType});
}

/// @nodoc
class _$EventLocationCopyWithImpl<$Res, $Val extends EventLocation>
    implements $EventLocationCopyWith<$Res> {
  _$EventLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? locationType = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      locationType: freezed == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventLocationImplCopyWith<$Res>
    implements $EventLocationCopyWith<$Res> {
  factory _$$EventLocationImplCopyWith(
          _$EventLocationImpl value, $Res Function(_$EventLocationImpl) then) =
      __$$EventLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? location, String? locationType});
}

/// @nodoc
class __$$EventLocationImplCopyWithImpl<$Res>
    extends _$EventLocationCopyWithImpl<$Res, _$EventLocationImpl>
    implements _$$EventLocationImplCopyWith<$Res> {
  __$$EventLocationImplCopyWithImpl(
      _$EventLocationImpl _value, $Res Function(_$EventLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? locationType = freezed,
  }) {
    return _then(_$EventLocationImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      locationType: freezed == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventLocationImpl implements _EventLocation {
  const _$EventLocationImpl({this.location, this.locationType});

  factory _$EventLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventLocationImplFromJson(json);

  @override
  final String? location;
  @override
  final String? locationType;

  @override
  String toString() {
    return 'EventLocation(location: $location, locationType: $locationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventLocationImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.locationType, locationType) ||
                other.locationType == locationType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, locationType);

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventLocationImplCopyWith<_$EventLocationImpl> get copyWith =>
      __$$EventLocationImplCopyWithImpl<_$EventLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventLocationImplToJson(
      this,
    );
  }
}

abstract class _EventLocation implements EventLocation {
  const factory _EventLocation(
      {final String? location,
      final String? locationType}) = _$EventLocationImpl;

  factory _EventLocation.fromJson(Map<String, dynamic> json) =
      _$EventLocationImpl.fromJson;

  @override
  String? get location;
  @override
  String? get locationType;

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventLocationImplCopyWith<_$EventLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventCollaboration _$EventCollaborationFromJson(Map<String, dynamic> json) {
  return _EventCollaboration.fromJson(json);
}

/// @nodoc
mixin _$EventCollaboration {
  String? get communityId => throw _privateConstructorUsedError;
  String? get communityName => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  bool get approveStatus => throw _privateConstructorUsedError;

  /// Serializes this EventCollaboration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventCollaboration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCollaborationCopyWith<EventCollaboration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCollaborationCopyWith<$Res> {
  factory $EventCollaborationCopyWith(
          EventCollaboration value, $Res Function(EventCollaboration) then) =
      _$EventCollaborationCopyWithImpl<$Res, EventCollaboration>;
  @useResult
  $Res call(
      {String? communityId,
      String? communityName,
      String? desc,
      bool approveStatus});
}

/// @nodoc
class _$EventCollaborationCopyWithImpl<$Res, $Val extends EventCollaboration>
    implements $EventCollaborationCopyWith<$Res> {
  _$EventCollaborationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventCollaboration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = freezed,
    Object? communityName = freezed,
    Object? desc = freezed,
    Object? approveStatus = null,
  }) {
    return _then(_value.copyWith(
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityName: freezed == communityName
          ? _value.communityName
          : communityName // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      approveStatus: null == approveStatus
          ? _value.approveStatus
          : approveStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventCollaborationImplCopyWith<$Res>
    implements $EventCollaborationCopyWith<$Res> {
  factory _$$EventCollaborationImplCopyWith(_$EventCollaborationImpl value,
          $Res Function(_$EventCollaborationImpl) then) =
      __$$EventCollaborationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? communityId,
      String? communityName,
      String? desc,
      bool approveStatus});
}

/// @nodoc
class __$$EventCollaborationImplCopyWithImpl<$Res>
    extends _$EventCollaborationCopyWithImpl<$Res, _$EventCollaborationImpl>
    implements _$$EventCollaborationImplCopyWith<$Res> {
  __$$EventCollaborationImplCopyWithImpl(_$EventCollaborationImpl _value,
      $Res Function(_$EventCollaborationImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventCollaboration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = freezed,
    Object? communityName = freezed,
    Object? desc = freezed,
    Object? approveStatus = null,
  }) {
    return _then(_$EventCollaborationImpl(
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityName: freezed == communityName
          ? _value.communityName
          : communityName // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      approveStatus: null == approveStatus
          ? _value.approveStatus
          : approveStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventCollaborationImpl implements _EventCollaboration {
  const _$EventCollaborationImpl(
      {this.communityId,
      this.communityName,
      this.desc,
      this.approveStatus = false});

  factory _$EventCollaborationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventCollaborationImplFromJson(json);

  @override
  final String? communityId;
  @override
  final String? communityName;
  @override
  final String? desc;
  @override
  @JsonKey()
  final bool approveStatus;

  @override
  String toString() {
    return 'EventCollaboration(communityId: $communityId, communityName: $communityName, desc: $desc, approveStatus: $approveStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCollaborationImpl &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.communityName, communityName) ||
                other.communityName == communityName) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.approveStatus, approveStatus) ||
                other.approveStatus == approveStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, communityId, communityName, desc, approveStatus);

  /// Create a copy of EventCollaboration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCollaborationImplCopyWith<_$EventCollaborationImpl> get copyWith =>
      __$$EventCollaborationImplCopyWithImpl<_$EventCollaborationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventCollaborationImplToJson(
      this,
    );
  }
}

abstract class _EventCollaboration implements EventCollaboration {
  const factory _EventCollaboration(
      {final String? communityId,
      final String? communityName,
      final String? desc,
      final bool approveStatus}) = _$EventCollaborationImpl;

  factory _EventCollaboration.fromJson(Map<String, dynamic> json) =
      _$EventCollaborationImpl.fromJson;

  @override
  String? get communityId;
  @override
  String? get communityName;
  @override
  String? get desc;
  @override
  bool get approveStatus;

  /// Create a copy of EventCollaboration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventCollaborationImplCopyWith<_$EventCollaborationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventParticipant _$EventParticipantFromJson(Map<String, dynamic> json) {
  return _EventParticipant.fromJson(json);
}

/// @nodoc
mixin _$EventParticipant {
  String? get userId => throw _privateConstructorUsedError;
  String? get communityId => throw _privateConstructorUsedError;
  String? get communityName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this EventParticipant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventParticipantCopyWith<EventParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventParticipantCopyWith<$Res> {
  factory $EventParticipantCopyWith(
          EventParticipant value, $Res Function(EventParticipant) then) =
      _$EventParticipantCopyWithImpl<$Res, EventParticipant>;
  @useResult
  $Res call(
      {String? userId,
      String? communityId,
      String? communityName,
      String? name});
}

/// @nodoc
class _$EventParticipantCopyWithImpl<$Res, $Val extends EventParticipant>
    implements $EventParticipantCopyWith<$Res> {
  _$EventParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? communityId = freezed,
    Object? communityName = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityName: freezed == communityName
          ? _value.communityName
          : communityName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventParticipantImplCopyWith<$Res>
    implements $EventParticipantCopyWith<$Res> {
  factory _$$EventParticipantImplCopyWith(_$EventParticipantImpl value,
          $Res Function(_$EventParticipantImpl) then) =
      __$$EventParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? communityId,
      String? communityName,
      String? name});
}

/// @nodoc
class __$$EventParticipantImplCopyWithImpl<$Res>
    extends _$EventParticipantCopyWithImpl<$Res, _$EventParticipantImpl>
    implements _$$EventParticipantImplCopyWith<$Res> {
  __$$EventParticipantImplCopyWithImpl(_$EventParticipantImpl _value,
      $Res Function(_$EventParticipantImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? communityId = freezed,
    Object? communityName = freezed,
    Object? name = freezed,
  }) {
    return _then(_$EventParticipantImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityName: freezed == communityName
          ? _value.communityName
          : communityName // ignore: cast_nullable_to_non_nullable
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
class _$EventParticipantImpl implements _EventParticipant {
  const _$EventParticipantImpl(
      {this.userId, this.communityId, this.communityName, this.name});

  factory _$EventParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventParticipantImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? communityId;
  @override
  final String? communityName;
  @override
  final String? name;

  @override
  String toString() {
    return 'EventParticipant(userId: $userId, communityId: $communityId, communityName: $communityName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventParticipantImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.communityName, communityName) ||
                other.communityName == communityName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, communityId, communityName, name);

  /// Create a copy of EventParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventParticipantImplCopyWith<_$EventParticipantImpl> get copyWith =>
      __$$EventParticipantImplCopyWithImpl<_$EventParticipantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventParticipantImplToJson(
      this,
    );
  }
}

abstract class _EventParticipant implements EventParticipant {
  const factory _EventParticipant(
      {final String? userId,
      final String? communityId,
      final String? communityName,
      final String? name}) = _$EventParticipantImpl;

  factory _EventParticipant.fromJson(Map<String, dynamic> json) =
      _$EventParticipantImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get communityId;
  @override
  String? get communityName;
  @override
  String? get name;

  /// Create a copy of EventParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventParticipantImplCopyWith<_$EventParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
