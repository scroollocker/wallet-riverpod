// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyModel _$$_CurrencyModelFromJson(Map<String, dynamic> json) =>
    _$_CurrencyModel(
      isDepositEnabled: json['isDepositEnabled'] as bool?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      icon: json['icon'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CurrencyModelToJson(_$_CurrencyModel instance) =>
    <String, dynamic>{
      'isDepositEnabled': instance.isDepositEnabled,
      'name': instance.name,
      'code': instance.code,
      'icon': instance.icon,
      'balance': instance.balance,
    };
