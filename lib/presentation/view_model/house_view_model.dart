import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_rabbit/domain/model/house.dart';
import 'package:home_rabbit/domain/use_case/use_cases.dart';
import 'package:home_rabbit/presentation/widget/item/discrimination_result_item.dart';

class HouseViewModel extends ChangeNotifier {
  final UseCases useCases;
  List<House>? _myHouses;
  List<House>? get myHouses => _myHouses;
  String? _searchText;
  String? get searchText => _searchText;
  setSearchText(String searchText) {
    _searchText = searchText;
    notifyListeners();
  }
  House? _currentHouse;
  House? get currentHouse => _currentHouse;
  setCurrentHouse(House currentHouse) {
    _currentHouse = currentHouse;
    notifyListeners();
  }
  final List<Widget> _resultWidgetList =[];
  List<Widget> get resultWidgetList => _resultWidgetList;

  HouseViewModel(this.useCases);

  Future<void> addHouse(String houseName) async {
    final house = House(
      houseName: houseName,
      recordDate: DateTime.now(),
    );
    await useCases.addHouseUseCase(house);
    await fetchHouse();
    notifyListeners();
  }

  Future<List<House>?> getHouse(String houseName) async {
    List<House>? house = await useCases.getHouseUseCase(houseName);

    if(house!.isEmpty) {
      return null;
    } else {
      return house;
    }
  }

  Future<List<House>?> getHouses() async {
    await fetchHouse();
    if(_myHouses != null) {
      return _myHouses;
    } else {
      return null;
    }
  }

  Future<void> fetchHouse() async {
    List<House>? fetchHouses = await useCases.getHousesUseCase();
    if(fetchHouses != null) {
      _myHouses = fetchHouses;
    } else {
      _myHouses = null;
    }
  }

  Future<void> updateHouse(House newHouse) async {
    await useCases.updateHouseUseCase(newHouse);
    await fetchHouse();
    notifyListeners();
  }

  Future<void> deleteHouse(int id) async {
    await useCases.deleteHouseUseCase(id);
    await fetchHouse();
    notifyListeners();
  }

  String getSearchText() {
    if(searchText!=null) {
      return searchText!;
    }
    return "";
  }

  getChoiceChip(int choiceChipTheme) {
    switch (choiceChipTheme) {
      case 1:
        return currentHouse!.isDoubleAgent;
      case 2:
        return currentHouse!.isDuplicateContract;
      case 3:
        return currentHouse!.isTrustCompany;
      case 4:
        return currentHouse!.isTaxEvasion;
      case 5:
        return currentHouse!.isIllegalBuilding;
      case 6:
        return currentHouse!.isAgentScam;
      case 7:
        return currentHouse!.isNoInsurance;
    }
  }
  void handleChoiceChip(int choiceChipTheme, int i) {
    switch (choiceChipTheme) {
      case 1:
        _currentHouse!.isDoubleAgent = i;
        updateHouse(_currentHouse!);
        break;
      case 2:
        _currentHouse!.isDuplicateContract = i;
        updateHouse(_currentHouse!);
        break;
      case 3:
        _currentHouse!.isTrustCompany = i;
        updateHouse(_currentHouse!);
        break;
      case 4:
        _currentHouse!.isTaxEvasion = i;
        updateHouse(_currentHouse!);
        break;
      case 5:
        _currentHouse!.isIllegalBuilding = i;
        updateHouse(_currentHouse!);
        break;
      case 6:
        _currentHouse!.isAgentScam = i;
        updateHouse(_currentHouse!);
        break;
      case 7:
        _currentHouse!.isNoInsurance = i;
        updateHouse(_currentHouse!);
        break;
    }
  }

  getNumberInputText(int numberInputTheme) {
    switch (numberInputTheme) {
      case 8:
        return _currentHouse!.marketPrice;
      case 9:
        return _currentHouse!.mortgage;
      case 10:
        return _currentHouse!.seniorDeposit;
      case 11:
        return _currentHouse!.deposit;
      case 12:
        return _currentHouse!.priority;
    }
  }

  handleNumberInput(int numberInputTheme, String controllerText) {
    double changedValue;

    if(double.tryParse(controllerText) != null) {
      changedValue = double.tryParse(controllerText)!;
    } else {
      changedValue = 0;
    }

    switch (numberInputTheme) {
      case 8:
        _currentHouse!.marketPrice = changedValue;
        updateHouse(_currentHouse!);
        break;
      case 9:
        _currentHouse!.mortgage = changedValue;
        updateHouse(_currentHouse!);
        break;
      case 10:
        _currentHouse!.seniorDeposit = changedValue;
        updateHouse(_currentHouse!);
        break;
      case 11:
        _currentHouse!.deposit = changedValue;
        updateHouse(_currentHouse!);
        break;
      case 12:
        _currentHouse!.priority = changedValue;
        updateHouse(_currentHouse!);
        break;
    }
  }

  void turnIsDiscriminatedTrue() {
    _currentHouse!.isDiscriminated = true;
    updateHouse(_currentHouse!);

  }

  void discriminatingNavigate(BuildContext context) {
    if (_currentHouse!.isDiscriminated) {
      context.go('/home/discriminationResult');
    } else {
      context.go('/home/firstInput');
    }
  }

  void assessFinancialRisk() {
    double safeMoney;
    safeMoney = _currentHouse!.marketPrice*0.75-_currentHouse!.mortgage*1.2-_currentHouse!.seniorDeposit+_currentHouse!.priority;
    if(safeMoney>=0) {
      currentHouse!.isFinancialRisk = 0;
      updateHouse(_currentHouse!);
    } else {
      currentHouse!.isFinancialRisk = 1;
      updateHouse(_currentHouse!);
    }
  }

  void assessRisk() {
    int riskPoint = 0;
    if(_currentHouse!.isDoubleAgent==1) {riskPoint+=1;}
    if(_currentHouse!.isDuplicateContract==1) {riskPoint+=1;}
    if(_currentHouse!.isFinancialRisk==1) {riskPoint+=3;}
    if(_currentHouse!.isIllegalBuilding==1) {riskPoint+=1;}
    if(_currentHouse!.isNoInsurance==1) {riskPoint+=1;}
    if(_currentHouse!.isAgentScam==1) {riskPoint+=1;}
    if(_currentHouse!.isTaxEvasion==1) {riskPoint+=1;}
    if(_currentHouse!.isTrustCompany==1) {riskPoint+=1;}
    if(riskPoint == 0) {
      currentHouse!.rank = 'A';
      updateHouse(_currentHouse!);
    }
    if(0 < riskPoint && riskPoint <= 2) {
      currentHouse!.rank = 'B';
      updateHouse(_currentHouse!);
    }
    if(2< riskPoint && riskPoint <= 5) {
      currentHouse!.rank = 'C';
      updateHouse(_currentHouse!);
    }
    if(5< riskPoint) {
      currentHouse!.rank = 'D';
      updateHouse(_currentHouse!);
    }
  }

  List<Widget> showDiscriminationWidget() {
    resultWidgetList.clear();
    if(_currentHouse!.isDoubleAgent==1) {resultWidgetList.add(const DiscriminationResultItem(riskFactor: '대리인 이중계약',)); resultWidgetList.add(const SizedBox(height: 20,));}
    if(_currentHouse!.isDuplicateContract==1) {resultWidgetList.add(const DiscriminationResultItem(riskFactor: '동일매물 중복계약',));resultWidgetList.add(const SizedBox(height: 20,));}
    if(_currentHouse!.isFinancialRisk==1) {resultWidgetList.add(const DiscriminationResultItem(riskFactor: '재무적 위험',));resultWidgetList.add(const SizedBox(height: 20,));}
    if(_currentHouse!.isIllegalBuilding==1) {resultWidgetList.add(const DiscriminationResultItem(riskFactor: '불법건축물',));resultWidgetList.add(const SizedBox(height: 20,));}
    if(_currentHouse!.isNoInsurance==1) {resultWidgetList.add(const DiscriminationResultItem(riskFactor: '보험 가입 불가',));resultWidgetList.add(const SizedBox(height: 20,));}
    if(_currentHouse!.isAgentScam==1) {resultWidgetList.add(const DiscriminationResultItem(riskFactor: '공인중개사 신뢰 불가',));resultWidgetList.add(const SizedBox(height: 20,));}
    if(_currentHouse!.isTaxEvasion==1) {resultWidgetList.add(const DiscriminationResultItem(riskFactor: '세금 체납',));resultWidgetList.add(const SizedBox(height: 20,));}
    if(_currentHouse!.isTrustCompany==1) {resultWidgetList.add(const DiscriminationResultItem(riskFactor: '신탁 거래',));resultWidgetList.add(const SizedBox(height: 20,));}
    return resultWidgetList;
  }

  showHouseColor() {
    Color rankColor = Colors.white;
    switch(_currentHouse!.rank){
      case 'TBD':
        rankColor = Colors.grey.shade600;
        break;
      case 'A':
        rankColor = Colors.blue.shade400;
        break;
      case 'B':
        rankColor = Colors.greenAccent.shade700;
        break;
      case 'C':
        rankColor = Colors.yellow;
        break;
      case 'D':
        rankColor = Colors.red;
        break;
    }
    return rankColor;
  }

  String showHouseRisk() {
    String riskManual = '';
    switch(_currentHouse!.rank){
      case 'A':
        riskManual = '해당 매물은 안정성은 양호한 수준입니다';
        break;
      case 'B':
        riskManual = '해당 매물의 안전성은 평범한 수준입니다';
        break;
      case 'C':
        riskManual = '해당 매물의 안정성은 장담할 수 없습니다';
        break;
      case 'D':
        riskManual = '해당 매물은 안정성은 위험한 수준입니다';
        break;
    }
    return riskManual;
  }

  void goDetailManual(BuildContext context, String riskFactor) {
    switch(riskFactor){
      case '대리인 이중계약':
        context.go('/home/firstInput/secondInput/thirdInput/discriminationResult/discriminationResultDetail');
        break;
      case '동일매물 중복계약':
        context.go('/home/firstInput/secondInput/thirdInput/discriminationResult/discriminationResultDetail');
        break;
      case '재무적 위험':
        context.go('/home/firstInput/secondInput/thirdInput/discriminationResult/discriminationResultDetail');
        break;
      case '불법건축물':
        context.go('/home/firstInput/secondInput/thirdInput/discriminationResult/discriminationResultDetail');
        break;
      case '보험 가입 불가':
        context.go('/home/firstInput/secondInput/thirdInput/discriminationResult/discriminationResultDetail');
        break;
      case '공인중개사 신뢰 불가':
        context.go('/home/firstInput/secondInput/thirdInput/discriminationResult/discriminationResultDetail');
        break;
      case '세금 체납':
        context.go('/home/firstInput/secondInput/thirdInput/discriminationResult/taxEvasionResult');
        break;
      case '신탁 거래':
        context.go('/home/firstInput/secondInput/thirdInput/discriminationResult/discriminationResultDetail');
        break;
    }
  }
}

