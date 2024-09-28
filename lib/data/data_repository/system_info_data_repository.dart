import 'package:home_rabbit/data/data_source/system_info_data_source.dart';
import 'package:home_rabbit/domain/domain_repository/system_info_domain_repository.dart';

class SystemInfoDataRepository implements SystemInfoDomainRepository {
  SystemInfoDataSource systemInfoDataSource;
  SystemInfoDataRepository(this.systemInfoDataSource);

  @override
  Future<String> getInfoText(String id) {
    return systemInfoDataSource.getInfoText(id);
  }

  @override
  Future<List<String>> getResultInfoTexts(String id) {
    return systemInfoDataSource.getResultInfoTexts(id);
  }
}