import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_rabbit/domain/domain_repository/sign_domain_repository.dart';

class AppleLogInUseCase {
  final SignDomainRepository signDomainRepository;
  AppleLogInUseCase(this.signDomainRepository);

  Future<UserCredential> call() async{
    UserCredential userCredential = await signDomainRepository.appleLogIn();
    return userCredential;
  }
}