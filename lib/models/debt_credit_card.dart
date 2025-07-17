import "package:freezed_annotation/freezed_annotation.dart";

//part "main.freezed.dart";

//part "main.g.dart";

part "debt_credit_card.freezed.dart";

part "debt_credit_card.g.dart";

@freezed
abstract class DebtCreditCard with _$DebtCreditCard {
  const factory DebtCreditCard({
    required String name,
    required String type,
    String? email,
    String? phone,
    String? contactType,
  }) = _DebtCreditCard;

  factory DebtCreditCard.fromJson(Map<String, dynamic> json) =>
      _$DebtCreditCardFromJson(json);
}
