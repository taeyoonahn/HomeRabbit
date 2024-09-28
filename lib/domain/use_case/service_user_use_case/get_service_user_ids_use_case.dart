import 'package:home_rabbit/domain/domain_repository/service_user_domain_repository.dart';

class GetServiceUserIdsUseCase {
  final ServiceUserDomainRepository serviceUserDomainRepository;
  GetServiceUserIdsUseCase(this.serviceUserDomainRepository);

  Future<List<String>> call() async{
    List<String> userIds = await serviceUserDomainRepository.getServiceUserIds();
    return userIds;
  }
}