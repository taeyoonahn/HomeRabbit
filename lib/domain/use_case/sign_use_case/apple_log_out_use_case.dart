import 'package:home_rabbit/domain/domain_repository/sign_domain_repository.dart';

class AppleLogOutUseCase {
  final SignDomainRepository signDomainRepository;
  AppleLogOutUseCase(this.signDomainRepository);

  Future<void> call() async{
    await signDomainRepository.appleLogOut();
  }
}