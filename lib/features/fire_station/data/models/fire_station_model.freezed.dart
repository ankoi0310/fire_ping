// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fire_station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FireStationModel {

 int get id; String get name; String get phone;@JsonKey(name: 'address_text') String get addressText; double get lat; double get lng; String get location;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of FireStationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FireStationModelCopyWith<FireStationModel> get copyWith => _$FireStationModelCopyWithImpl<FireStationModel>(this as FireStationModel, _$identity);

  /// Serializes this FireStationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FireStationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressText, addressText) || other.addressText == addressText)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.location, location) || other.location == location)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,addressText,lat,lng,location,isActive);

@override
String toString() {
  return 'FireStationModel(id: $id, name: $name, phone: $phone, addressText: $addressText, lat: $lat, lng: $lng, location: $location, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $FireStationModelCopyWith<$Res>  {
  factory $FireStationModelCopyWith(FireStationModel value, $Res Function(FireStationModel) _then) = _$FireStationModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String phone,@JsonKey(name: 'address_text') String addressText, double lat, double lng, String location,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$FireStationModelCopyWithImpl<$Res>
    implements $FireStationModelCopyWith<$Res> {
  _$FireStationModelCopyWithImpl(this._self, this._then);

  final FireStationModel _self;
  final $Res Function(FireStationModel) _then;

/// Create a copy of FireStationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? addressText = null,Object? lat = null,Object? lng = null,Object? location = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,addressText: null == addressText ? _self.addressText : addressText // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FireStationModel].
extension FireStationModelPatterns on FireStationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FireStationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FireStationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FireStationModel value)  $default,){
final _that = this;
switch (_that) {
case _FireStationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FireStationModel value)?  $default,){
final _that = this;
switch (_that) {
case _FireStationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String phone, @JsonKey(name: 'address_text')  String addressText,  double lat,  double lng,  String location, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FireStationModel() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.addressText,_that.lat,_that.lng,_that.location,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String phone, @JsonKey(name: 'address_text')  String addressText,  double lat,  double lng,  String location, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _FireStationModel():
return $default(_that.id,_that.name,_that.phone,_that.addressText,_that.lat,_that.lng,_that.location,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String phone, @JsonKey(name: 'address_text')  String addressText,  double lat,  double lng,  String location, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _FireStationModel() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.addressText,_that.lat,_that.lng,_that.location,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FireStationModel implements FireStationModel {
  const _FireStationModel({required this.id, required this.name, required this.phone, @JsonKey(name: 'address_text') required this.addressText, required this.lat, required this.lng, required this.location, @JsonKey(name: 'is_active') required this.isActive});
  factory _FireStationModel.fromJson(Map<String, dynamic> json) => _$FireStationModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String phone;
@override@JsonKey(name: 'address_text') final  String addressText;
@override final  double lat;
@override final  double lng;
@override final  String location;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of FireStationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FireStationModelCopyWith<_FireStationModel> get copyWith => __$FireStationModelCopyWithImpl<_FireStationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FireStationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FireStationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressText, addressText) || other.addressText == addressText)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.location, location) || other.location == location)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,addressText,lat,lng,location,isActive);

@override
String toString() {
  return 'FireStationModel(id: $id, name: $name, phone: $phone, addressText: $addressText, lat: $lat, lng: $lng, location: $location, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$FireStationModelCopyWith<$Res> implements $FireStationModelCopyWith<$Res> {
  factory _$FireStationModelCopyWith(_FireStationModel value, $Res Function(_FireStationModel) _then) = __$FireStationModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String phone,@JsonKey(name: 'address_text') String addressText, double lat, double lng, String location,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$FireStationModelCopyWithImpl<$Res>
    implements _$FireStationModelCopyWith<$Res> {
  __$FireStationModelCopyWithImpl(this._self, this._then);

  final _FireStationModel _self;
  final $Res Function(_FireStationModel) _then;

/// Create a copy of FireStationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? addressText = null,Object? lat = null,Object? lng = null,Object? location = null,Object? isActive = null,}) {
  return _then(_FireStationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,addressText: null == addressText ? _self.addressText : addressText // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
