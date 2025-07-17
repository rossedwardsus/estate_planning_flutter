// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Asset {

 String get assetName; String get assetType;//house, ira, checking, stock
 String? get bankingInstitution; String? get phone; String? get contactType;
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetCopyWith<Asset> get copyWith => _$AssetCopyWithImpl<Asset>(this as Asset, _$identity);

  /// Serializes this Asset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Asset&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetType, assetType) || other.assetType == assetType)&&(identical(other.bankingInstitution, bankingInstitution) || other.bankingInstitution == bankingInstitution)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.contactType, contactType) || other.contactType == contactType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,assetName,assetType,bankingInstitution,phone,contactType);

@override
String toString() {
  return 'Asset(assetName: $assetName, assetType: $assetType, bankingInstitution: $bankingInstitution, phone: $phone, contactType: $contactType)';
}


}

/// @nodoc
abstract mixin class $AssetCopyWith<$Res>  {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) _then) = _$AssetCopyWithImpl;
@useResult
$Res call({
 String assetName, String assetType, String? bankingInstitution, String? phone, String? contactType
});




}
/// @nodoc
class _$AssetCopyWithImpl<$Res>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._self, this._then);

  final Asset _self;
  final $Res Function(Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assetName = null,Object? assetType = null,Object? bankingInstitution = freezed,Object? phone = freezed,Object? contactType = freezed,}) {
  return _then(_self.copyWith(
assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String,assetType: null == assetType ? _self.assetType : assetType // ignore: cast_nullable_to_non_nullable
as String,bankingInstitution: freezed == bankingInstitution ? _self.bankingInstitution : bankingInstitution // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,contactType: freezed == contactType ? _self.contactType : contactType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Asset].
extension AssetPatterns on Asset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Asset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Asset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Asset value)  $default,){
final _that = this;
switch (_that) {
case _Asset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Asset value)?  $default,){
final _that = this;
switch (_that) {
case _Asset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String assetName,  String assetType,  String? bankingInstitution,  String? phone,  String? contactType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Asset() when $default != null:
return $default(_that.assetName,_that.assetType,_that.bankingInstitution,_that.phone,_that.contactType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String assetName,  String assetType,  String? bankingInstitution,  String? phone,  String? contactType)  $default,) {final _that = this;
switch (_that) {
case _Asset():
return $default(_that.assetName,_that.assetType,_that.bankingInstitution,_that.phone,_that.contactType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String assetName,  String assetType,  String? bankingInstitution,  String? phone,  String? contactType)?  $default,) {final _that = this;
switch (_that) {
case _Asset() when $default != null:
return $default(_that.assetName,_that.assetType,_that.bankingInstitution,_that.phone,_that.contactType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Asset implements Asset {
  const _Asset({required this.assetName, required this.assetType, this.bankingInstitution, this.phone, this.contactType});
  factory _Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

@override final  String assetName;
@override final  String assetType;
//house, ira, checking, stock
@override final  String? bankingInstitution;
@override final  String? phone;
@override final  String? contactType;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetCopyWith<_Asset> get copyWith => __$AssetCopyWithImpl<_Asset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Asset&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetType, assetType) || other.assetType == assetType)&&(identical(other.bankingInstitution, bankingInstitution) || other.bankingInstitution == bankingInstitution)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.contactType, contactType) || other.contactType == contactType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,assetName,assetType,bankingInstitution,phone,contactType);

@override
String toString() {
  return 'Asset(assetName: $assetName, assetType: $assetType, bankingInstitution: $bankingInstitution, phone: $phone, contactType: $contactType)';
}


}

/// @nodoc
abstract mixin class _$AssetCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$AssetCopyWith(_Asset value, $Res Function(_Asset) _then) = __$AssetCopyWithImpl;
@override @useResult
$Res call({
 String assetName, String assetType, String? bankingInstitution, String? phone, String? contactType
});




}
/// @nodoc
class __$AssetCopyWithImpl<$Res>
    implements _$AssetCopyWith<$Res> {
  __$AssetCopyWithImpl(this._self, this._then);

  final _Asset _self;
  final $Res Function(_Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assetName = null,Object? assetType = null,Object? bankingInstitution = freezed,Object? phone = freezed,Object? contactType = freezed,}) {
  return _then(_Asset(
assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String,assetType: null == assetType ? _self.assetType : assetType // ignore: cast_nullable_to_non_nullable
as String,bankingInstitution: freezed == bankingInstitution ? _self.bankingInstitution : bankingInstitution // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,contactType: freezed == contactType ? _self.contactType : contactType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
