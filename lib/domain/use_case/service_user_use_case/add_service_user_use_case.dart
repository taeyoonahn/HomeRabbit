import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_rabbit/domain/domain_repository/service_user_domain_repository.dart';

class AddServiceUserUseCase {
  final ServiceUserDomainRepository serviceUserDomainRepository;
  AddServiceUserUseCase(this.serviceUserDomainRepository);

  Future<void> call(User user) async{
    await serviceUserDomainRepository.addServiceUser(user);
  }
}