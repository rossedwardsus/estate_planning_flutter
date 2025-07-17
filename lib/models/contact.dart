import "package:freezed_annotation/freezed_annotation.dart";

//part "main.freezed.dart";

//part "main.g.dart";

part "contact.freezed.dart";

part "contact.g.dart";

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    required String firstName,
    required String lastName,
    String? email,
    String? phone,
    String? contactType,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
