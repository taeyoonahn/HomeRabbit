import 'package:home_rabbit/domain/model/house.dart';

abstract class HouseDomainRepository {
  Future<void> addHouse(House house);
  Future<List<House>> getHouse(String houseName);
  Future<List<House>> getHouses();
  Future<void> updateHouse(House house);
  Future<void> deleteHouse(int id);
}