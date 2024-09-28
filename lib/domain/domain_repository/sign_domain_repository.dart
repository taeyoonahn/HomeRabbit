import 'package:firebase_auth/firebase_auth.dart';

abstract class SignDomainRepository {
  Future<UserCredential> googleLogIn();
  Future<void> googleLogOut();
  Future<UserCredential> appleLogIn();
  Future<void> appleLogOut();
}