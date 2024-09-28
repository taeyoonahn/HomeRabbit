import 'package:home_rabbit/domain/domain_repository/house_domain_repository.dart';

class DeleteHouseUseCase {
  final HouseDomainRepository houseDomainRepository;
  DeleteHouseUseCase(this.houseDomainRepository);

  Future<void> call(int id) async{
    await houseDomainRepository.deleteHouse(id);
  }
}