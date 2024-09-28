import 'package:home_rabbit/domain/domain_repository/house_domain_repository.dart';
import 'package:home_rabbit/domain/model/house.dart';

class GetHouseUseCase {
  final HouseDomainRepository houseDomainRepository;

  GetHouseUseCase(this.houseDomainRepository);

  Future<List<House>?> call(String houseName) {
    Future<List<House>?> house = houseDomainRepository.getHouse(houseName);
    return house;
  }
}