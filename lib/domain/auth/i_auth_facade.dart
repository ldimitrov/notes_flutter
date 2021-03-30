import 'package:dartz/dartz.dart';
import 'package:notes_flutter/domain/auth/auth_failure.dart';
import 'package:notes_flutter/domain/auth/authentication.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
