// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deposit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepositModel _$DepositModelFromJson(Map<String, dynamic> json) {
  return _DepositModel.fromJson(json);
}

/// @nodoc
mixin _$DepositModel {
  TabContent? get payId => throw _privateConstructorUsedError;
  TabContent? get transfer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositModelCopyWith<DepositModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositModelCopyWith<$Res> {
  factory $DepositModelCopyWith(
          DepositModel value, $Res Function(DepositModel) then) =
      _$DepositModelCopyWithImpl<$Res>;
  $Res call({TabContent? payId, TabContent? transfer});

  $TabContentCopyWith<$Res>? get payId;
  $TabContentCopyWith<$Res>? get transfer;
}

/// @nodoc
class _$DepositModelCopyWithImpl<$Res> implements $DepositModelCopyWith<$Res> {
  _$DepositModelCopyWithImpl(this._value, this._then);

  final DepositModel _value;
  // ignore: unused_field
  final $Res Function(DepositModel) _then;

  @override
  $Res call({
    Object? payId = freezed,
    Object? transfer = freezed,
  }) {
    return _then(_value.copyWith(
      payId: payId == freezed
          ? _value.payId
          : payId // ignore: cast_nullable_to_non_nullable
              as TabContent?,
      transfer: transfer == freezed
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as TabContent?,
    ));
  }

  @override
  $TabContentCopyWith<$Res>? get payId {
    if (_value.payId == null) {
      return null;
    }

    return $TabContentCopyWith<$Res>(_value.payId!, (value) {
      return _then(_value.copyWith(payId: value));
    });
  }

  @override
  $TabContentCopyWith<$Res>? get transfer {
    if (_value.transfer == null) {
      return null;
    }

    return $TabContentCopyWith<$Res>(_value.transfer!, (value) {
      return _then(_value.copyWith(transfer: value));
    });
  }
}

/// @nodoc
abstract class _$$_DepositModelCopyWith<$Res>
    implements $DepositModelCopyWith<$Res> {
  factory _$$_DepositModelCopyWith(
          _$_DepositModel value, $Res Function(_$_DepositModel) then) =
      __$$_DepositModelCopyWithImpl<$Res>;
  @override
  $Res call({TabContent? payId, TabContent? transfer});

  @override
  $TabContentCopyWith<$Res>? get payId;
  @override
  $TabContentCopyWith<$Res>? get transfer;
}

/// @nodoc
class __$$_DepositModelCopyWithImpl<$Res>
    extends _$DepositModelCopyWithImpl<$Res>
    implements _$$_DepositModelCopyWith<$Res> {
  __$$_DepositModelCopyWithImpl(
      _$_DepositModel _value, $Res Function(_$_DepositModel) _then)
      : super(_value, (v) => _then(v as _$_DepositModel));

  @override
  _$_DepositModel get _value => super._value as _$_DepositModel;

  @override
  $Res call({
    Object? payId = freezed,
    Object? transfer = freezed,
  }) {
    return _then(_$_DepositModel(
      payId: payId == freezed
          ? _value.payId
          : payId // ignore: cast_nullable_to_non_nullable
              as TabContent?,
      transfer: transfer == freezed
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as TabContent?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DepositModel implements _DepositModel {
  const _$_DepositModel({this.payId, this.transfer});

  factory _$_DepositModel.fromJson(Map<String, dynamic> json) =>
      _$$_DepositModelFromJson(json);

  @override
  final TabContent? payId;
  @override
  final TabContent? transfer;

  @override
  String toString() {
    return 'DepositModel(payId: $payId, transfer: $transfer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepositModel &&
            const DeepCollectionEquality().equals(other.payId, payId) &&
            const DeepCollectionEquality().equals(other.transfer, transfer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(payId),
      const DeepCollectionEquality().hash(transfer));

  @JsonKey(ignore: true)
  @override
  _$$_DepositModelCopyWith<_$_DepositModel> get copyWith =>
      __$$_DepositModelCopyWithImpl<_$_DepositModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepositModelToJson(this);
  }
}

abstract class _DepositModel implements DepositModel {
  const factory _DepositModel(
      {final TabContent? payId, final TabContent? transfer}) = _$_DepositModel;

  factory _DepositModel.fromJson(Map<String, dynamic> json) =
      _$_DepositModel.fromJson;

  @override
  TabContent? get payId => throw _privateConstructorUsedError;
  @override
  TabContent? get transfer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DepositModelCopyWith<_$_DepositModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TabContent _$TabContentFromJson(Map<String, dynamic> json) {
  return _TabContent.fromJson(json);
}

/// @nodoc
mixin _$TabContent {
  String? get important => throw _privateConstructorUsedError;
  List<FieldData>? get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabContentCopyWith<TabContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabContentCopyWith<$Res> {
  factory $TabContentCopyWith(
          TabContent value, $Res Function(TabContent) then) =
      _$TabContentCopyWithImpl<$Res>;
  $Res call({String? important, List<FieldData>? fields});
}

/// @nodoc
class _$TabContentCopyWithImpl<$Res> implements $TabContentCopyWith<$Res> {
  _$TabContentCopyWithImpl(this._value, this._then);

  final TabContent _value;
  // ignore: unused_field
  final $Res Function(TabContent) _then;

  @override
  $Res call({
    Object? important = freezed,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      important: important == freezed
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TabContentCopyWith<$Res>
    implements $TabContentCopyWith<$Res> {
  factory _$$_TabContentCopyWith(
          _$_TabContent value, $Res Function(_$_TabContent) then) =
      __$$_TabContentCopyWithImpl<$Res>;
  @override
  $Res call({String? important, List<FieldData>? fields});
}

/// @nodoc
class __$$_TabContentCopyWithImpl<$Res> extends _$TabContentCopyWithImpl<$Res>
    implements _$$_TabContentCopyWith<$Res> {
  __$$_TabContentCopyWithImpl(
      _$_TabContent _value, $Res Function(_$_TabContent) _then)
      : super(_value, (v) => _then(v as _$_TabContent));

  @override
  _$_TabContent get _value => super._value as _$_TabContent;

  @override
  $Res call({
    Object? important = freezed,
    Object? fields = freezed,
  }) {
    return _then(_$_TabContent(
      important: important == freezed
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: fields == freezed
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TabContent implements _TabContent {
  const _$_TabContent({this.important, final List<FieldData>? fields})
      : _fields = fields;

  factory _$_TabContent.fromJson(Map<String, dynamic> json) =>
      _$$_TabContentFromJson(json);

  @override
  final String? important;
  final List<FieldData>? _fields;
  @override
  List<FieldData>? get fields {
    final value = _fields;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TabContent(important: $important, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabContent &&
            const DeepCollectionEquality().equals(other.important, important) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(important),
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  _$$_TabContentCopyWith<_$_TabContent> get copyWith =>
      __$$_TabContentCopyWithImpl<_$_TabContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TabContentToJson(this);
  }
}

abstract class _TabContent implements TabContent {
  const factory _TabContent(
      {final String? important, final List<FieldData>? fields}) = _$_TabContent;

  factory _TabContent.fromJson(Map<String, dynamic> json) =
      _$_TabContent.fromJson;

  @override
  String? get important => throw _privateConstructorUsedError;
  @override
  List<FieldData>? get fields => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TabContentCopyWith<_$_TabContent> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldData _$FieldDataFromJson(Map<String, dynamic> json) {
  return _FieldData.fromJson(json);
}

/// @nodoc
mixin _$FieldData {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldDataCopyWith<FieldData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldDataCopyWith<$Res> {
  factory $FieldDataCopyWith(FieldData value, $Res Function(FieldData) then) =
      _$FieldDataCopyWithImpl<$Res>;
  $Res call({String? key, String? value});
}

/// @nodoc
class _$FieldDataCopyWithImpl<$Res> implements $FieldDataCopyWith<$Res> {
  _$FieldDataCopyWithImpl(this._value, this._then);

  final FieldData _value;
  // ignore: unused_field
  final $Res Function(FieldData) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FieldDataCopyWith<$Res> implements $FieldDataCopyWith<$Res> {
  factory _$$_FieldDataCopyWith(
          _$_FieldData value, $Res Function(_$_FieldData) then) =
      __$$_FieldDataCopyWithImpl<$Res>;
  @override
  $Res call({String? key, String? value});
}

/// @nodoc
class __$$_FieldDataCopyWithImpl<$Res> extends _$FieldDataCopyWithImpl<$Res>
    implements _$$_FieldDataCopyWith<$Res> {
  __$$_FieldDataCopyWithImpl(
      _$_FieldData _value, $Res Function(_$_FieldData) _then)
      : super(_value, (v) => _then(v as _$_FieldData));

  @override
  _$_FieldData get _value => super._value as _$_FieldData;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_FieldData(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FieldData implements _FieldData {
  const _$_FieldData({this.key, this.value});

  factory _$_FieldData.fromJson(Map<String, dynamic> json) =>
      _$$_FieldDataFromJson(json);

  @override
  final String? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'FieldData(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldData &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_FieldDataCopyWith<_$_FieldData> get copyWith =>
      __$$_FieldDataCopyWithImpl<_$_FieldData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldDataToJson(this);
  }
}

abstract class _FieldData implements FieldData {
  const factory _FieldData({final String? key, final String? value}) =
      _$_FieldData;

  factory _FieldData.fromJson(Map<String, dynamic> json) =
      _$_FieldData.fromJson;

  @override
  String? get key => throw _privateConstructorUsedError;
  @override
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FieldDataCopyWith<_$_FieldData> get copyWith =>
      throw _privateConstructorUsedError;
}
