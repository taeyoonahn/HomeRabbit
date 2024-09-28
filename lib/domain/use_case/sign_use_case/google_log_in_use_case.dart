import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_rabbit/domain/domain_repository/sign_domain_repository.dart';

class GoogleLogInUseCase {
  final SignDomainRepository signDomainRepository;
  GoogleLogInUseCase(this.signDomainRepository);

  Future<UserCredential> call() async{
    UserCredential userCredential = await signDomainRepository.googleLogIn();
    return userCredential;
  }
}