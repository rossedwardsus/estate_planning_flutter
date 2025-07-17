import "package:freezed_annotation/freezed_annotation.dart";

//part "main.freezed.dart";

//part "main.g.dart";

part "asset.freezed.dart";

part "asset.g.dart";

@freezed
abstract class Asset with _$Asset {
  const factory Asset({
    required String assetName,
    required String assetType, //house, ira, checking, stock
    String? bankingInstitution,
    String? phone,
    String? contactType,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}
