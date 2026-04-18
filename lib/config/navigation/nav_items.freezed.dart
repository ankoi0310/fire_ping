// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavItem {

 String get label; IconData get icon; IconData get activeIcon; String get route;
/// Create a copy of NavItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavItemCopyWith<NavItem> get copyWith => _$NavItemCopyWithImpl<NavItem>(this as NavItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavItem&&(identical(other.label, label) || other.label == label)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.activeIcon, activeIcon) || other.activeIcon == activeIcon)&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,label,icon,activeIcon,route);

@override
String toString() {
  return 'NavItem(label: $label, icon: $icon, activeIcon: $activeIcon, route: $route)';
}


}

/// @nodoc
abstract mixin class $NavItemCopyWith<$Res>  {
  factory $NavItemCopyWith(NavItem value, $Res Function(NavItem) _then) = _$NavItemCopyWithImpl;
@useResult
$Res call({
 String label, IconData icon, IconData activeIcon, String route
});




}
/// @nodoc
class _$NavItemCopyWithImpl<$Res>
    implements $NavItemCopyWith<$Res> {
  _$NavItemCopyWithImpl(this._self, this._then);

  final NavItem _self;
  final $Res Function(NavItem) _then;

/// Create a copy of NavItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? icon = null,Object? activeIcon = null,Object? route = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,activeIcon: null == activeIcon ? _self.activeIcon : activeIcon // ignore: cast_nullable_to_non_nullable
as IconData,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NavItem].
extension NavItemPatterns on NavItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavItem value)  $default,){
final _that = this;
switch (_that) {
case _NavItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavItem value)?  $default,){
final _that = this;
switch (_that) {
case _NavItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  IconData icon,  IconData activeIcon,  String route)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavItem() when $default != null:
return $default(_that.label,_that.icon,_that.activeIcon,_that.route);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  IconData icon,  IconData activeIcon,  String route)  $default,) {final _that = this;
switch (_that) {
case _NavItem():
return $default(_that.label,_that.icon,_that.activeIcon,_that.route);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  IconData icon,  IconData activeIcon,  String route)?  $default,) {final _that = this;
switch (_that) {
case _NavItem() when $default != null:
return $default(_that.label,_that.icon,_that.activeIcon,_that.route);case _:
  return null;

}
}

}

/// @nodoc


class _NavItem implements NavItem {
  const _NavItem({required this.label, required this.icon, required this.activeIcon, required this.route});
  

@override final  String label;
@override final  IconData icon;
@override final  IconData activeIcon;
@override final  String route;

/// Create a copy of NavItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavItemCopyWith<_NavItem> get copyWith => __$NavItemCopyWithImpl<_NavItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavItem&&(identical(other.label, label) || other.label == label)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.activeIcon, activeIcon) || other.activeIcon == activeIcon)&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,label,icon,activeIcon,route);

@override
String toString() {
  return 'NavItem(label: $label, icon: $icon, activeIcon: $activeIcon, route: $route)';
}


}

/// @nodoc
abstract mixin class _$NavItemCopyWith<$Res> implements $NavItemCopyWith<$Res> {
  factory _$NavItemCopyWith(_NavItem value, $Res Function(_NavItem) _then) = __$NavItemCopyWithImpl;
@override @useResult
$Res call({
 String label, IconData icon, IconData activeIcon, String route
});




}
/// @nodoc
class __$NavItemCopyWithImpl<$Res>
    implements _$NavItemCopyWith<$Res> {
  __$NavItemCopyWithImpl(this._self, this._then);

  final _NavItem _self;
  final $Res Function(_NavItem) _then;

/// Create a copy of NavItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? icon = null,Object? activeIcon = null,Object? route = null,}) {
  return _then(_NavItem(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,activeIcon: null == activeIcon ? _self.activeIcon : activeIcon // ignore: cast_nullable_to_non_nullable
as IconData,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
