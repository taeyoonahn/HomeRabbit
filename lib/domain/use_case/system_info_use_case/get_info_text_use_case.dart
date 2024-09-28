import 'package:home_rabbit/domain/domain_repository/system_info_domain_repository.dart';

class GetInfoTextUseCase {
  final SystemInfoDomainRepository systemInfoDomainRepository;
  GetInfoTextUseCase(this.systemInfoDomainRepository);

  Future<String> call(String id) {
    Future<String> infoText = systemInfoDomainRepository.getInfoText(id);
    return infoText;
  }
}