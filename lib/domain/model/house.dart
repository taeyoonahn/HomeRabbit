import 'package:isar/isar.dart';

part 'house.g.dart';

@collection
class House {
  Id id = Isar.autoIncrement;

  DateTime recordDate;

  @Index(type: IndexType.value)
  String houseName;

  @Index(type: IndexType.value)
  String rank;

  @Index(type: IndexType.value)
  double marketPrice;

  @Index(type: IndexType.value)
  double mortgage;

  @Index(type: IndexType.value)
  double seniorDeposit;

  @Index(type: IndexType.value)
  double deposit;

  @Index(type: IndexType.value)
  double priority;

  @Index(type: IndexType.value)
  bool isDiscriminated;

  @Index(type: IndexType.value)
  int isDoubleAgent;

  @Index(type: IndexType.value)
  int isDuplicateContract;

  @Index(type: IndexType.value)
  int isFinancialRisk;

  @Index(type: IndexType.value)
  int isIllegalBuilding;

  @Index(type: IndexType.value)
  int isNoInsurance;

  @Index(type: IndexType.value)
  int isAgentScam;

  @Index(type: IndexType.value)
  int isTrustCompany;

  @Index(type: IndexType.value)
  int isTaxEvasion;

  House({
    required this.recordDate,
    required this.houseName,
    this.rank = 'TBD',
    this.marketPrice = 0,
    this.mortgage = 0,
    this.seniorDeposit = 0,
    this.deposit = 0,
    this.priority = 0,
    this.isDiscriminated = false,
    this.isDoubleAgent = 2,
    this.isDuplicateContract = 2,
    this.isFinancialRisk = 2,
    this.isIllegalBuilding = 2,
    this.isNoInsurance = 2,
    this.isAgentScam = 2,
    this.isTrustCompany = 2,
    this.isTaxEvasion  = 2,
  });
}