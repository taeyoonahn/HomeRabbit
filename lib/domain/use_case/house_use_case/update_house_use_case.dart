import 'package:home_rabbit/domain/domain_repository/house_domain_repository.dart';
import 'package:home_rabbit/domain/model/house.dart';

class UpdateHouseUseCase {
  final HouseDomainRepository houseDomainRepository;
  UpdateHouseUseCase(this.houseDomainRepository);

  Future<void> call(House house) async{
    await houseDomainRepository.updateHouse(house);
  }
}