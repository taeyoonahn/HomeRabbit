import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_rabbit/data/data_source/sign_data_source.dart';
import 'package:home_rabbit/domain/domain_repository/sign_domain_repository.dart';

class SignDataRepository implements SignDomainRepository{
  SignDataSource signDataSource;
  SignDataRepository(this.signDataSource);

  @override
  Future<UserCredential> googleLogIn() async {
    return signDataSource.googleLogIn();
  }

  @override
  Future<void> googleLogOut() async {
    return signDataSource.googleLogOut();
  }

  @override
  Future<UserCredential> appleLogIn() async {
    return signDataSource.appleLogIn();
  }

  @override
  Future<void> appleLogOut() async {
    return signDataSource.appleLogOut();
  }
}

