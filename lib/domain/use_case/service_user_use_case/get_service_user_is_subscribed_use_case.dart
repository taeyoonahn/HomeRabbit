import 'package:home_rabbit/domain/domain_repository/service_user_domain_repository.dart';

class GetServiceUserIsSubscribed {
  final ServiceUserDomainRepository serviceUserDomainRepository;
  GetServiceUserIsSubscribed(this.serviceUserDomainRepository);

  Future<bool> call(String uid) async{
    bool userIsSubscribed = await serviceUserDomainRepository.getServiceUserIsSubscribed(uid);
    return userIsSubscribed;
  }
}