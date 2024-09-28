import 'package:flutter/material.dart';
import 'package:home_rabbit/domain/use_case/use_cases.dart';
import 'package:home_rabbit/presentation/widget/item/discrimintaion_result_detail_item.dart';

class SystemInfoViewModel with ChangeNotifier {
  final UseCases useCases;
  String? _currentRiskFactor;
  String? get currentRiskFactor => _currentRiskFactor;
  setCurrentRiskFactor(String currentRiskFactor){
    _currentRiskFactor = currentRiskFactor;
    notifyListeners();
  }
  String? _currentQuestionInfoFactor;
  String? get currentQuestionInfoFactor => _currentQuestionInfoFactor;
  setCurrentQuestionInfoFactor(String currentQuestionInfoFactor){
    _currentQuestionInfoFactor = currentQuestionInfoFactor;
    notifyListeners();
  }

  List<String> doubleAgentContractResultDetailString = [];
  List<String> duplicateContractResultDetailString = [];
  List<String> financialRiskResultDetailString = [];
  List<String> illegalBuildingResultDetailString = [];
  List<String> noInsuranceResultDetailString = [];
  List<String> realEstateAgentScamResultDetailString = [];
  List<String> taxEvasionResultDetailString = [];
  List<String> trustCompanyResultDetailString = [];
  List<Widget> doubleAgentContractResultDetail = [];
  List<Widget> duplicateContractResultDetail = [];
  List<Widget> financialRiskResultDetail = [];
  List<Widget> illegalBuildingResultDetail = [];
  List<Widget> noInsuranceResultDetail = [];
  List<Widget> realEstateAgentScamResultDetail = [];
  List<Widget> taxEvasionResultDetail = [];
  List<Widget> trustCompanyResultDetail = [];

  SystemInfoViewModel(this.useCases);

  Future<String> getInfoText(String id) async {
    Future<String> infoText = useCases.getInfoTextUseCase(id);
    return infoText;
  }

  void fetchResultInfoTexts() async {
    doubleAgentContractResultDetailString =
    await useCases.getResultInfoTextsUseCase('doubleAgentContract');
    doubleAgentContractResultDetail = doubleAgentContractResultDetailString
        .map((str) => DiscriminationResultDetailItem(
      resultInfoText: str,
    ))
        .toList();
    duplicateContractResultDetailString =
    await useCases.getResultInfoTextsUseCase('duplicateContract');
    duplicateContractResultDetail = duplicateContractResultDetailString
        .map((str) => DiscriminationResultDetailItem(
      resultInfoText: str,
    ))
        .toList();
    financialRiskResultDetailString =
    await useCases.getResultInfoTextsUseCase('financialRisk');
    financialRiskResultDetail = financialRiskResultDetailString
        .map((str) => DiscriminationResultDetailItem(
      resultInfoText: str,
    ))
        .toList();
    illegalBuildingResultDetailString =
    await useCases.getResultInfoTextsUseCase('illegalBuilding');
    illegalBuildingResultDetail = illegalBuildingResultDetailString
        .map((str) => DiscriminationResultDetailItem(
      resultInfoText: str,
    ))
        .toList();
    noInsuranceResultDetailString =
    await useCases.getResultInfoTextsUseCase('noInsurance');
    noInsuranceResultDetail = noInsuranceResultDetailString
        .map((str) => DiscriminationResultDetailItem(
      resultInfoText: str,
    ))
        .toList();
    realEstateAgentScamResultDetailString =
    await useCases.getResultInfoTextsUseCase('realEstateAgentScam');
    realEstateAgentScamResultDetail = realEstateAgentScamResultDetailString
        .map((str) => DiscriminationResultDetailItem(
      resultInfoText: str,
    ))
        .toList();
    taxEvasionResultDetailString =
    await useCases.getResultInfoTextsUseCase('taxEvasionResultDetail');
    taxEvasionResultDetail = taxEvasionResultDetailString
        .map((str) => DiscriminationResultDetailItem(
      resultInfoText: str,
    ))
        .toList();
    trustCompanyResultDetailString =
    await useCases.getResultInfoTextsUseCase('trustCompany');
    trustCompanyResultDetail = trustCompanyResultDetailString
        .map((str) => DiscriminationResultDetailItem(
      resultInfoText: str,
    ))
        .toList();
  }

  List<Widget> getCurrentResultDetail() {
    switch (currentRiskFactor) {
      case '대리인 이중계약':
        return doubleAgentContractResultDetail;
      case '동일매물 중복계약':
        return duplicateContractResultDetail;
      case '재무적 위험':
        return financialRiskResultDetail;
      case '불법 건축물':
        return illegalBuildingResultDetail;
      case '보험 가입 불가':
        return noInsuranceResultDetail;
      case '공인중개사 신뢰 불가':
        return realEstateAgentScamResultDetail;
      case '세금 체납':
        return taxEvasionResultDetail;
      case '신탁 거래':
        return trustCompanyResultDetail;
      default:
        return [];
    }
  }

  String getCurrentInfoUrlText() {
    switch (currentQuestionInfoFactor) {
      case '대리인 이중계약':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '동일매물 중복계약':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '불법 건축물':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '보험 가입 불가':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '공인중개사 신뢰 불가':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '세금 체납':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '신탁 거래':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '매물 시세':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '근저당권':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '선순위 보증금':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '전세보증금액':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      case '최우선 변제금액':
        return 'https://upbeat-double-f6b.notion.site/3fd815cac9224ded961f025dd6d944b4';
      default:
        return '';
    }
  }
}
