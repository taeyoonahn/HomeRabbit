import 'package:home_rabbit/domain/domain_repository/sign_domain_repository.dart';

class GoogleLogOutUseCase {
  final SignDomainRepository signDomainRepository;
  GoogleLogOutUseCase(this.signDomainRepository);

  Future<void> call() async{
    await signDomainRepository.googleLogOut();
  }
}