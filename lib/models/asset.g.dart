// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Asset _$AssetFromJson(Map<String, dynamic> json) => _Asset(
  assetName: json['assetName'] as String,
  assetType: json['assetType'] as String,
  bankingInstitution: json['bankingInstitution'] as String?,
  phone: json['phone'] as String?,
  contactType: json['contactType'] as String?,
);

Map<String, dynamic> _$AssetToJson(_Asset instance) => <String, dynamic>{
  'assetName': instance.assetName,
  'assetType': instance.assetType,
  'bankingInstitution': instance.bankingInstitution,
  'phone': instance.phone,
  'contactType': instance.contactType,
};
