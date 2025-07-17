// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_credit_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DebtCreditCard _$DebtCreditCardFromJson(Map<String, dynamic> json) =>
    _DebtCreditCard(
      name: json['name'] as String,
      type: json['type'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      contactType: json['contactType'] as String?,
    );

Map<String, dynamic> _$DebtCreditCardToJson(_DebtCreditCard instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'email': instance.email,
      'phone': instance.phone,
      'contactType': instance.contactType,
    };
