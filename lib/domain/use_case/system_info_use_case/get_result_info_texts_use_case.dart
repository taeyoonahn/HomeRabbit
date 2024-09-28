import 'package:home_rabbit/domain/domain_repository/system_info_domain_repository.dart';

class GetResultInfoTextsUseCase {
  final SystemInfoDomainRepository systemInfoDomainRepository;
  GetResultInfoTextsUseCase(this.systemInfoDomainRepository);

  Future<List<String>> call(String id) {
    Future<List<String>> resultInfoTexts = systemInfoDomainRepository.getResultInfoTexts(id);
    return resultInfoTexts;
  }
}