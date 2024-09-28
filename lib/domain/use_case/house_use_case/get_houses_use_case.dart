import 'package:home_rabbit/domain/domain_repository/house_domain_repository.dart';
import 'package:home_rabbit/domain/model/house.dart';

class GetHousesUseCase {
  final HouseDomainRepository houseDomainRepository;

  GetHousesUseCase(this.houseDomainRepository);

  Future<List<House>?> call() {
    Future<List<House>?> houses = houseDomainRepository.getHouses();
    return houses;
  }
}