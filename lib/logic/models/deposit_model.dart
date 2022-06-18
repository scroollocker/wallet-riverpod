import 'package:freezed_annotation/freezed_annotation.dart';

part 'deposit_model.freezed.dart';
part 'deposit_model.g.dart';

@freezed
class DepositModel with _$DepositModel {
  @JsonSerializable(explicitToJson: true)
  const factory DepositModel({TabContent? payId, TabContent? transfer}) =
      _DepositModel;

  factory DepositModel.fromJson(Map<String, dynamic> json) =>
      _$DepositModelFromJson(json);
}

@freezed
class TabContent with _$TabContent {
  @JsonSerializable(explicitToJson: true)
  const factory TabContent({
    String? important,
    List<FieldData>? fields,
  }) = _TabContent;

  factory TabContent.fromJson(Map<String, dynamic> json) =>
      _$TabContentFromJson(json);
}

@freezed
class FieldData with _$FieldData {
  const factory FieldData({String? key, String? value}) = _FieldData;

  factory FieldData.fromJson(Map<String, dynamic> json) =>
      _$FieldDataFromJson(json);
}
