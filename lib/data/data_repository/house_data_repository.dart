import 'package:home_rabbit/data/data_source/house_data_source.dart';
import 'package:home_rabbit/domain/domain_repository/house_domain_repository.dart';
import 'package:home_rabbit/domain/model/house.dart';

class HouseDataRepository implements HouseDomainRepository {
  HouseDataSource houseDataSource = HouseDataSource.houseDataSource;
  HouseDataRepository(this.houseDataSource);


  @override
  Future<void> addHouse(House house) async{
    await houseDataSource.addHouse(house);
  }

  @override
  Future<List<House>> getHouse(String houseName) async {
    return await houseDataSource.getHouse(houseName);
  }

  @override
  Future<List<House>> getHouses() async {
    return await houseDataSource.getHouses();
  }

  @override
  Future<void> updateHouse(House house) async {
    await houseDataSource.updateHouse(house);
  }

  @override
  Future<void> deleteHouse(int id) async {
    await houseDataSource.deleteHouse(id);
  }
}