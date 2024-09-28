abstract class SystemInfoDomainRepository {
  Future<String> getInfoText(String id);
  Future<List<String>> getResultInfoTexts(String id);
}