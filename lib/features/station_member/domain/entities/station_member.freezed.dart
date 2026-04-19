// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StationMember {

 String get id; String get userId; String get stationId; String get role; bool get isActive; DateTime get createdAt;
/// Create a copy of StationMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationMemberCopyWith<StationMember> get copyWith => _$StationMemberCopyWithImpl<StationMember>(this as StationMember, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationMember&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,stationId,role,isActive,createdAt);

@override
String toString() {
  return 'StationMember(id: $id, userId: $userId, stationId: $stationId, role: $role, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $StationMemberCopyWith<$Res>  {
  factory $StationMemberCopyWith(StationMember value, $Res Function(StationMember) _then) = _$StationMemberCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String stationId, String role, bool isActive, DateTime createdAt
});




}
/// @nodoc
class _$StationMemberCopyWithImpl<$Res>
    implements $StationMemberCopyWith<$Res> {
  _$StationMemberCopyWithImpl(this._self, this._then);

  final StationMember _self;
  final $Res Function(StationMember) _then;

/// Create a copy of StationMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? stationId = null,Object? role = null,Object? isActive = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [StationMember].
extension StationMemberPatterns on StationMember {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StationMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StationMember() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StationMember value)  $default,){
final _that = this;
switch (_that) {
case _StationMember():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StationMember value)?  $default,){
final _that = this;
switch (_that) {
case _StationMember() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String stationId,  String role,  bool isActive,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StationMember() when $default != null:
return $default(_that.id,_that.userId,_that.stationId,_that.role,_that.isActive,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String stationId,  String role,  bool isActive,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _StationMember():
return $default(_that.id,_that.userId,_that.stationId,_that.role,_that.isActive,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String stationId,  String role,  bool isActive,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _StationMember() when $default != null:
return $default(_that.id,_that.userId,_that.stationId,_that.role,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _StationMember implements StationMember {
  const _StationMember({required this.id, required this.userId, required this.stationId, required this.role, required this.isActive, required this.createdAt});
  

@override final  String id;
@override final  String userId;
@override final  String stationId;
@override final  String role;
@override final  bool isActive;
@override final  DateTime createdAt;

/// Create a copy of StationMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StationMemberCopyWith<_StationMember> get copyWith => __$StationMemberCopyWithImpl<_StationMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StationMember&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,stationId,role,isActive,createdAt);

@override
String toString() {
  return 'StationMember(id: $id, userId: $userId, stationId: $stationId, role: $role, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StationMemberCopyWith<$Res> implements $StationMemberCopyWith<$Res> {
  factory _$StationMemberCopyWith(_StationMember value, $Res Function(_StationMember) _then) = __$StationMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String stationId, String role, bool isActive, DateTime createdAt
});




}
/// @nodoc
class __$StationMemberCopyWithImpl<$Res>
    implements _$StationMemberCopyWith<$Res> {
  __$StationMemberCopyWithImpl(this._self, this._then);

  final _StationMember _self;
  final $Res Function(_StationMember) _then;

/// Create a copy of StationMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? stationId = null,Object? role = null,Object? isActive = null,Object? createdAt = null,}) {
  return _then(_StationMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
