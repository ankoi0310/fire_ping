// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StationMemberModel {

 String get id; String get userId; String get stationId; String get role; bool get isActive; DateTime get createdAt;
/// Create a copy of StationMemberModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationMemberModelCopyWith<StationMemberModel> get copyWith => _$StationMemberModelCopyWithImpl<StationMemberModel>(this as StationMemberModel, _$identity);

  /// Serializes this StationMemberModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationMemberModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,stationId,role,isActive,createdAt);

@override
String toString() {
  return 'StationMemberModel(id: $id, userId: $userId, stationId: $stationId, role: $role, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $StationMemberModelCopyWith<$Res>  {
  factory $StationMemberModelCopyWith(StationMemberModel value, $Res Function(StationMemberModel) _then) = _$StationMemberModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String stationId, String role, bool isActive, DateTime createdAt
});




}
/// @nodoc
class _$StationMemberModelCopyWithImpl<$Res>
    implements $StationMemberModelCopyWith<$Res> {
  _$StationMemberModelCopyWithImpl(this._self, this._then);

  final StationMemberModel _self;
  final $Res Function(StationMemberModel) _then;

/// Create a copy of StationMemberModel
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


/// Adds pattern-matching-related methods to [StationMemberModel].
extension StationMemberModelPatterns on StationMemberModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StationMemberModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StationMemberModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StationMemberModel value)  $default,){
final _that = this;
switch (_that) {
case _StationMemberModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StationMemberModel value)?  $default,){
final _that = this;
switch (_that) {
case _StationMemberModel() when $default != null:
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
case _StationMemberModel() when $default != null:
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
case _StationMemberModel():
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
case _StationMemberModel() when $default != null:
return $default(_that.id,_that.userId,_that.stationId,_that.role,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StationMemberModel implements StationMemberModel {
  const _StationMemberModel({required this.id, required this.userId, required this.stationId, required this.role, required this.isActive, required this.createdAt});
  factory _StationMemberModel.fromJson(Map<String, dynamic> json) => _$StationMemberModelFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String stationId;
@override final  String role;
@override final  bool isActive;
@override final  DateTime createdAt;

/// Create a copy of StationMemberModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StationMemberModelCopyWith<_StationMemberModel> get copyWith => __$StationMemberModelCopyWithImpl<_StationMemberModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StationMemberModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StationMemberModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,stationId,role,isActive,createdAt);

@override
String toString() {
  return 'StationMemberModel(id: $id, userId: $userId, stationId: $stationId, role: $role, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StationMemberModelCopyWith<$Res> implements $StationMemberModelCopyWith<$Res> {
  factory _$StationMemberModelCopyWith(_StationMemberModel value, $Res Function(_StationMemberModel) _then) = __$StationMemberModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String stationId, String role, bool isActive, DateTime createdAt
});




}
/// @nodoc
class __$StationMemberModelCopyWithImpl<$Res>
    implements _$StationMemberModelCopyWith<$Res> {
  __$StationMemberModelCopyWithImpl(this._self, this._then);

  final _StationMemberModel _self;
  final $Res Function(_StationMemberModel) _then;

/// Create a copy of StationMemberModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? stationId = null,Object? role = null,Object? isActive = null,Object? createdAt = null,}) {
  return _then(_StationMemberModel(
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
