// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_credit_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DebtCreditCard {

 String get name; String get type; String? get email; String? get phone; String? get contactType;
/// Create a copy of DebtCreditCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebtCreditCardCopyWith<DebtCreditCard> get copyWith => _$DebtCreditCardCopyWithImpl<DebtCreditCard>(this as DebtCreditCard, _$identity);

  /// Serializes this DebtCreditCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebtCreditCard&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.contactType, contactType) || other.contactType == contactType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,email,phone,contactType);

@override
String toString() {
  return 'DebtCreditCard(name: $name, type: $type, email: $email, phone: $phone, contactType: $contactType)';
}


}

/// @nodoc
abstract mixin class $DebtCreditCardCopyWith<$Res>  {
  factory $DebtCreditCardCopyWith(DebtCreditCard value, $Res Function(DebtCreditCard) _then) = _$DebtCreditCardCopyWithImpl;
@useResult
$Res call({
 String name, String type, String? email, String? phone, String? contactType
});




}
/// @nodoc
class _$DebtCreditCardCopyWithImpl<$Res>
    implements $DebtCreditCardCopyWith<$Res> {
  _$DebtCreditCardCopyWithImpl(this._self, this._then);

  final DebtCreditCard _self;
  final $Res Function(DebtCreditCard) _then;

/// Create a copy of DebtCreditCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? email = freezed,Object? phone = freezed,Object? contactType = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,contactType: freezed == contactType ? _self.contactType : contactType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DebtCreditCard].
extension DebtCreditCardPatterns on DebtCreditCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebtCreditCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebtCreditCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebtCreditCard value)  $default,){
final _that = this;
switch (_that) {
case _DebtCreditCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebtCreditCard value)?  $default,){
final _that = this;
switch (_that) {
case _DebtCreditCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String type,  String? email,  String? phone,  String? contactType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebtCreditCard() when $default != null:
return $default(_that.name,_that.type,_that.email,_that.phone,_that.contactType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String type,  String? email,  String? phone,  String? contactType)  $default,) {final _that = this;
switch (_that) {
case _DebtCreditCard():
return $default(_that.name,_that.type,_that.email,_that.phone,_that.contactType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String type,  String? email,  String? phone,  String? contactType)?  $default,) {final _that = this;
switch (_that) {
case _DebtCreditCard() when $default != null:
return $default(_that.name,_that.type,_that.email,_that.phone,_that.contactType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebtCreditCard implements DebtCreditCard {
  const _DebtCreditCard({required this.name, required this.type, this.email, this.phone, this.contactType});
  factory _DebtCreditCard.fromJson(Map<String, dynamic> json) => _$DebtCreditCardFromJson(json);

@override final  String name;
@override final  String type;
@override final  String? email;
@override final  String? phone;
@override final  String? contactType;

/// Create a copy of DebtCreditCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebtCreditCardCopyWith<_DebtCreditCard> get copyWith => __$DebtCreditCardCopyWithImpl<_DebtCreditCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebtCreditCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebtCreditCard&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.contactType, contactType) || other.contactType == contactType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,email,phone,contactType);

@override
String toString() {
  return 'DebtCreditCard(name: $name, type: $type, email: $email, phone: $phone, contactType: $contactType)';
}


}

/// @nodoc
abstract mixin class _$DebtCreditCardCopyWith<$Res> implements $DebtCreditCardCopyWith<$Res> {
  factory _$DebtCreditCardCopyWith(_DebtCreditCard value, $Res Function(_DebtCreditCard) _then) = __$DebtCreditCardCopyWithImpl;
@override @useResult
$Res call({
 String name, String type, String? email, String? phone, String? contactType
});




}
/// @nodoc
class __$DebtCreditCardCopyWithImpl<$Res>
    implements _$DebtCreditCardCopyWith<$Res> {
  __$DebtCreditCardCopyWithImpl(this._self, this._then);

  final _DebtCreditCard _self;
  final $Res Function(_DebtCreditCard) _then;

/// Create a copy of DebtCreditCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? email = freezed,Object? phone = freezed,Object? contactType = freezed,}) {
  return _then(_DebtCreditCard(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,contactType: freezed == contactType ? _self.contactType : contactType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
