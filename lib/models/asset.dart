import "package:freezed_annotation/freezed_annotation.dart";

//part "main.freezed.dart";

//part "main.g.dart";

part "asset_bank_account.freezed.dart";

part "asset_bank_account.g.dart";

@freezed
abstract class AssetBankAccount with _$AssetBankAccount {
  const factory AssetBankAccount({
    required String name,
    required String bankName, //house, ira, checking, stock
    //String? bankingInstitution,
    //String? phone,
    //String? contactType,
  }) = _AssetBankAccount;

  factory AssetBankAccount.fromJson(Map<String, dynamic> json) =>
      _$AssetBankAccountFromJson(json);
}
