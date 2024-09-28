import 'package:firebase_auth/firebase_auth.dart';

abstract class ServiceUserDomainRepository {
  Future<void> addServiceUser(User user);
  Future<List<String>> getServiceUserIds();
  Future<void> deleteServiceUser(String uid);
  Future<bool> getServiceUserIsSubscribed(String uid);
}