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

class UseCases {
  final AddServiceUserUseCase addServiceUserUseCase;
  final GetServiceUserIdsUseCase getServiceUserIdsUseCase;
  final DeleteServiceUserUseCase deleteServiceUserUseCase;
  final GetServiceUserIsSubscribed getServiceUserIsSubscribed;
  final AddHouseUseCase addHouseUseCase;
  final GetHouseUseCase getHouseUseCase;
  final GetHousesUseCase getHousesUseCase;
  final UpdateHouseUseCase updateHouseUseCase;
  final DeleteHouseUseCase deleteHouseUseCase;
  final GoogleLogInUseCase googleLogInUseCase;
  final GoogleLogOutUseCase googleLogOutUseCase;
  final AppleLogInUseCase appleLogInUseCase;
  final AppleLogOutUseCase appleLogOutUseCase;
  final GetInfoTextUseCase getInfoTextUseCase;
  final GetResultInfoTextsUseCase getResultInfoTextsUseCase;

  UseCases({
    required this.addServiceUserUseCase,
    required this.getServiceUserIdsUseCase,
    required this.deleteServiceUserUseCase,
    required this.getServiceUserIsSubscribed,
    required this.addHouseUseCase,
    required this.getHouseUseCase,
    required this.getHousesUseCase,
    required this.updateHouseUseCase,
    required this.deleteHouseUseCase,
    required this.googleLogInUseCase,
    required this.googleLogOutUseCase,
    required this.appleLogInUseCase,
    required this.appleLogOutUseCase,
    required this.getInfoTextUseCase,
    required this.getResultInfoTextsUseCase,
  });
}
