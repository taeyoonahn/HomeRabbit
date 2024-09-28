import 'package:home_rabbit/data/data_repository/house_data_repository.dart';
import 'package:home_rabbit/data/data_repository/service_user_data_repository.dart';
import 'package:home_rabbit/data/data_repository/sign_data_repository.dart';
import 'package:home_rabbit/data/data_repository/system_info_data_repository.dart';
import 'package:home_rabbit/data/data_source/house_data_source.dart';
import 'package:home_rabbit/data/data_source/sign_data_source.dart';
import 'package:home_rabbit/data/data_source/system_info_data_source.dart';
import 'package:home_rabbit/data/data_source/service_user_data_source.dart';
import 'package:home_rabbit/domain/domain_repository/house_domain_repository.dart';
import 'package:home_rabbit/domain/domain_repository/service_user_domain_repository.dart';
import 'package:home_rabbit/domain/domain_repository/sign_domain_repository.dart';
import 'package:home_rabbit/domain/domain_repository/system_info_domain_repository.dart';
import 'package:home_rabbit/domain/use_case/house_use_case/add_house_use_case.dart';
import 'package:home_rabbit/domain/use_case/house_use_case/delete_house_use_case.dart';
import 'package:home_rabbit/domain/use_case/house_use_case/get_house_use_case.dart';
import 'package:home_rabbit/domain/use_case/house_use_case/get_houses_use_case.dart';
import 'package:home_rabbit/domain/use_case/house_use_case/update_house_use_case.dart';
import 'package:home_rabbit/domain/use_case/service_user_use_case/add_service_user_use_case.dart';
import 'package:home_rabbit/domain/use_case/service_user_use_case/delete_service_user_use_case.dart';
import 'package:home_rabbit/domain/use_case/service_user_use_case/get_service_user_ids_use_case.dart';
import 'package:home_rabbit/domain/use_case/service_user_use_case/get_service_user_is_subscribed_use_case.dart';
import 'package:home_rabbit/domain/use_case/sign_use_case/apple_log_in_use_case.dart';
import 'package:home_rabbit/domain/use_case/sign_use_case/apple_log_out_use_case.dart';
import 'package:home_rabbit/domain/use_case/sign_use_case/google_log_in_use_case.dart';
import 'package:home_rabbit/domain/use_case/sign_use_case/google_log_out_use_case.dart';
import 'package:home_rabbit/domain/use_case/system_info_use_case/get_info_text_use_case.dart';
import 'package:home_rabbit/domain/use_case/system_info_use_case/get_result_info_texts_use_case.dart';
import 'package:home_rabbit/domain/use_case/use_cases.dart';
import 'package:home_rabbit/presentation/view_model/ad_mob_view_model.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:home_rabbit/presentation/view_model/system_info_view_model.dart';
import 'package:home_rabbit/presentation/view_model/service_user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:home_rabbit/presentation/view_model/router_view_model.dart';
import 'package:home_rabbit/presentation/view_model/loading_view_model.dart';

Future<List<SingleChildWidget>> providerDi() async {
  SignDataSource signDataSource = SignDataSource();
  HouseDataSource houseDataSource = HouseDataSource.houseDataSource;
  ServiceUserDataSource userDataSource = ServiceUserDataSource();
  SystemInfoDataSource systemInfoDataSource = SystemInfoDataSource();
  SignDomainRepository signDomainRepository = SignDataRepository(signDataSource);
  HouseDomainRepository houseDomainRepository = HouseDataRepository(houseDataSource);
  ServiceUserDomainRepository userDomainRepository = ServiceUserDataRepository(userDataSource);
  SystemInfoDomainRepository systemInfoDomainRepository = SystemInfoDataRepository(systemInfoDataSource);

  UseCases useCases = UseCases(
    addServiceUserUseCase: AddServiceUserUseCase(userDomainRepository),
    getServiceUserIdsUseCase: GetServiceUserIdsUseCase(userDomainRepository),
    deleteServiceUserUseCase: DeleteServiceUserUseCase(userDomainRepository),
    getServiceUserIsSubscribed: GetServiceUserIsSubscribed(userDomainRepository),
    addHouseUseCase: AddHouseUseCase(houseDomainRepository),
    getHouseUseCase: GetHouseUseCase(houseDomainRepository),
    getHousesUseCase: GetHousesUseCase(houseDomainRepository),
    updateHouseUseCase: UpdateHouseUseCase(houseDomainRepository),
    deleteHouseUseCase: DeleteHouseUseCase(houseDomainRepository),
    appleLogInUseCase: AppleLogInUseCase(signDomainRepository),
    googleLogInUseCase: GoogleLogInUseCase(signDomainRepository),
    appleLogOutUseCase: AppleLogOutUseCase(signDomainRepository),
    googleLogOutUseCase: GoogleLogOutUseCase(signDomainRepository),
    getInfoTextUseCase: GetInfoTextUseCase(systemInfoDomainRepository),
    getResultInfoTextsUseCase: GetResultInfoTextsUseCase(systemInfoDomainRepository),
  );

  LoadingViewModel loadingViewModel = LoadingViewModel();
  RouterViewModel routerViewModel = RouterViewModel();
  AdMobViewModel adMobViewModel = AdMobViewModel();
  HouseViewModel houseViewModel = HouseViewModel(useCases);
  ServiceUserViewModel serviceUserViewModel = ServiceUserViewModel(useCases);
  SystemInfoViewModel systemInfoViewModel = SystemInfoViewModel(useCases);

  return [
    ChangeNotifierProvider(create: (_) => loadingViewModel),
    ChangeNotifierProvider(create: (_) => routerViewModel),
    ChangeNotifierProvider(create: (_) => adMobViewModel),
    ChangeNotifierProvider(create: (_) => houseViewModel),
    ChangeNotifierProvider(create: (_) => serviceUserViewModel),
    ChangeNotifierProvider(create: (_) => systemInfoViewModel),
  ];
}
