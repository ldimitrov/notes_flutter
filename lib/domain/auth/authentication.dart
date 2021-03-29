import 'package:dartz/dartz.dart';
import 'package:notes_flutter/domain/core/failures.dart';
import 'package:notes_flutter/domain/core/value_objects.dart';
import 'package:notes_flutter/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}
