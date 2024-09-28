import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_rabbit/data/data_source/service_user_data_source.dart';
import 'package:home_rabbit/domain/domain_repository/service_user_domain_repository.dart';

class ServiceUserDataRepository implements ServiceUserDomainRepository {
  ServiceUserDataSource ServiceuserDataSource;
  ServiceUserDataRepository(this.ServiceuserDataSource);

  @override
  Future<void> addServiceUser(User user) {
    return ServiceuserDataSource.addServiceUser(user);
  }

  @override
  Future<List<String>> getServiceUserIds() {
    return ServiceuserDataSource.getServiceUserIds();
  }

  @override
  Future<void> deleteServiceUser(String uid) {
    return ServiceuserDataSource.deleteServiceUser(uid);
  }

  @override
  Future<bool> getServiceUserIsSubscribed(String uid) {
    return ServiceuserDataSource.getServiceUserIsSubscribed(uid);
  }
}