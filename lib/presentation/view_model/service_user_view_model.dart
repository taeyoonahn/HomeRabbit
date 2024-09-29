import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_rabbit/domain/use_case/use_cases.dart';
import 'package:home_rabbit/util/sign_platform.dart';

class ServiceUserViewModel with ChangeNotifier {
  SignPlatform _signPlatform = SignPlatform.none;
  SignPlatform get signPlatform => _signPlatform;
  User? _user;
  User? get user => _user;
  set user(value) {
    _user = value;
    notifyListeners();
  }
  String _userName = '';
  String get userName => _userName;
  set userName(value) {
    _userName = value;
    notifyListeners();
  }
  bool _isSubscribed = false;
  bool get isSubscribed => _isSubscribed;
  set isSubscribed(value) {
    _isSubscribed = value;
    notifyListeners();
  }
  final UseCases useCases;
  ServiceUserViewModel(this.useCases);

  void signIn (BuildContext context, String loginPlatform) async {
    switch(loginPlatform) {
      case 'google' :
        _signPlatform = SignPlatform.google;
        await googleLogIn();
        break;
      case 'apple' :
        _signPlatform = SignPlatform.apple;
        await appleLogIn();
        break;
    }
    if(await isNewUser()) {
      await useCases.addServiceUserUseCase(_user!);
    }
    isSubscribed = await getIsSubscribed();
    if (context.mounted) {
      context.go('/serviceUserInfo');
    }
    notifyListeners();
  }

  Future<void> googleLogIn() async {
    UserCredential userCredential = await useCases.googleLogInUseCase();
    _user = userCredential.user;
    notifyListeners();
  }

  Future<void> appleLogIn() async {
    UserCredential userCredential = await useCases.appleLogInUseCase();
    _user = userCredential.user;
    notifyListeners();
  }

  void signOut(BuildContext context) async {
    switch (_signPlatform) {
      case SignPlatform.google:
        try {
          useCases.googleLogOutUseCase;
          notifyListeners();
          break;
        } catch (error) {
          break;
        }
      case SignPlatform.apple:
        break;
      case SignPlatform.none:
        break;
    }
    _user = null;
    _signPlatform = SignPlatform.none;
    context.go('/home');
    notifyListeners();
  }

  Future<bool> isNewUser() async {
    List<String> userIdList = await useCases.getServiceUserIdsUseCase();
    return !userIdList.contains(_user!.uid);
  }

  User getCurrentUser() {
    final user = this.user;
    if (user != null) {
      return user;
    } else {
      return throw UnimplementedError();
    }
  }

  String getCurrentUid() {
    final user = this.user;
    if(user !=null) {
      return user.uid;
    } else {
      String userNullSignal = "NULL";
      return userNullSignal;
    }
  }

  String getCurrentUserName() {
    String userNullSignal = "NULL";
    final user = this.user;
    if(user !=null) {
      print("sex1");
      if(user.displayName==null) {
        print("sex2");
        return userNullSignal;
      }
      return user.displayName!;
    } else {
      print("sex3");
      return userNullSignal;
    }
  }

  Future<bool> getIsSubscribed() async {
    Future<bool> isSubscribed = useCases.getServiceUserIsSubscribed(getCurrentUid());
    return isSubscribed;
  }
}