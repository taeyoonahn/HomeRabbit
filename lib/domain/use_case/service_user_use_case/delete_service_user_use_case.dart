import 'package:home_rabbit/domain/domain_repository/service_user_domain_repository.dart';

class DeleteServiceUserUseCase {
  final ServiceUserDomainRepository serviceUserDomainRepository;
  DeleteServiceUserUseCase(this.serviceUserDomainRepository);

  Future<void> call(String uid) async{
    await serviceUserDomainRepository.deleteServiceUser(uid);
  }
}