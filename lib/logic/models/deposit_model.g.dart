// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepositModel _$$_DepositModelFromJson(Map<String, dynamic> json) =>
    _$_DepositModel(
      payId: json['payId'] == null
          ? null
          : TabContent.fromJson(json['payId'] as Map<String, dynamic>),
      transfer: json['transfer'] == null
          ? null
          : TabContent.fromJson(json['transfer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DepositModelToJson(_$_DepositModel instance) =>
    <String, dynamic>{
      'payId': instance.payId?.toJson(),
      'transfer': instance.transfer?.toJson(),
    };

_$_TabContent _$$_TabContentFromJson(Map<String, dynamic> json) =>
    _$_TabContent(
      important: json['important'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TabContentToJson(_$_TabContent instance) =>
    <String, dynamic>{
      'important': instance.important,
      'fields': instance.fields?.map((e) => e.toJson()).toList(),
    };

_$_FieldData _$$_FieldDataFromJson(Map<String, dynamic> json) => _$_FieldData(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_FieldDataToJson(_$_FieldData instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
