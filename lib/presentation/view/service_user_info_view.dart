import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:home_rabbit/presentation/view/system_info_view.dart';
import 'package:home_rabbit/presentation/view_model/ad_mob_view_model.dart';
import 'package:home_rabbit/presentation/view_model/service_user_view_model.dart';
import 'package:home_rabbit/presentation/widget/app_bar/main_app_bar.dart';
import 'package:home_rabbit/presentation/widget/button/main_button.dart';
import 'package:home_rabbit/presentation/widget/button/sign_in_button.dart';
import 'package:provider/provider.dart';


class ServiceUserInfoView extends StatelessWidget {
  const ServiceUserInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final adMobViewModel = context.read<AdMobViewModel>();
    adMobViewModel.disposeBanner();
    adMobViewModel.loadBanner();
    String? uid;

    return Consumer<ServiceUserViewModel>(
        builder: (context, signViewModel, child) {
          uid = signViewModel.getCurrentUid();
          if (uid != "NULL") {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: const MainAppBar(text: '집토끼',),
              body: SafeArea(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 70,
                      alignment: Alignment.center,
                      child: AdWidget(ad: adMobViewModel.showBanner()),
                    ),
                    Container(
                      margin: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 30,),
                          const Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 10,),
                                Text(
                                  '집토끼에 오신 것을 환영합니다!',
                                  maxLines: 1,
                                  style: TextStyle(fontFamily: 'SCDream',
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Flexible(
                            child: Container(
                              width: double.maxFinite,
                              height: 70,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 22, horizontal: 20),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Colors.purple, Colors.blue],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(color: Colors.black12, width: 1.5),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30,),
                          MainButton(
                            buttonText: '집토끼 구독',
                            buttonWidth: double.infinity,
                            buttonHeight: 55,
                            myFontSize: 20,
                            myCallback: () async {
                              // Offerings offerings = await Purchases.getOfferings();
                              // if(offerings.current ==null) {
                              //   print("error");
                              // } else {
                              //   showModalBottomSheet(
                              //       useRootNavigator: true,
                              //       isDismissible: true,
                              //       isScrollControlled: true,
                              //       backgroundColor: Colors.white,
                              //       context: context,
                              //       shape: const RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                              //       ),
                              //       builder: (BuildContext context) {
                              //         return PayWallBottomSheet(
                              //           offering: offerings.current!,
                              //         );
                              //       }
                              //   );
                              // }
                            },
                          ),
                          const SizedBox(height: 60,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5.0, left: 10.0,),
                                      child: Text(
                                        '문의 및 정보 관리',
                                        style: TextStyle(
                                            fontFamily: 'SCDream',
                                            fontSize: 17.0,
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            context.go('/userInfo/termsOfUse');
                                          },
                                          child: const Text('이용약관', style: TextStyle(
                                              fontFamily: 'SCDream',
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),),),
                                        const SizedBox(width: 50,),
                                        TextButton(
                                          onPressed: () {
                                            context.go('/userInfo/privacyPolicy');
                                          },
                                          child: const Text('개인정보 처리방침', style: TextStyle(
                                              fontFamily: 'SCDream',
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        TextButton(onPressed: () =>
                                            signViewModel.signOut(context),
                                          child: const Text('로그아웃', style: TextStyle(
                                              fontFamily: 'SCDream',
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),),),
                                        const SizedBox(width: 50,),
                                        TextButton(onPressed: () async {
                                          await showDialog(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                    backgroundColor: Colors.white,
                                                    content: const Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                            style: TextStyle(
                                                                fontSize: 14),
                                                            "탈퇴하시겠습니까?\n탈퇴할 경우 회원님의 모든 정보는 삭제되며 되돌릴 수 없습니다."
                                                        )
                                                      ],
                                                    ),
                                                    actions: [
                                                      Center(
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize
                                                              .min,
                                                          children: [
                                                            MainButton(
                                                              buttonText: '삭제',
                                                              buttonHeight: 40,
                                                              buttonWidth: 70,
                                                              myFontSize: 12,
                                                              myCallback: () {
                                                                // signViewModel.deleteUser();
                                                                // deleteFlag = true;
                                                                Navigator.pop(context);
                                                              },
                                                            ),
                                                            const SizedBox(
                                                              width: 30,),
                                                            MainButton(
                                                              buttonText: '취소',
                                                              buttonHeight: 40,
                                                              buttonWidth: 70,
                                                              myFontSize: 12,
                                                              myCallback: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ]);
                                              });
                                        },
                                          child: const Text('회원탈퇴', style: TextStyle(
                                              fontFamily: 'SCDream',
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                barrierDismissible: false,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                      backgroundColor: Colors.white,
                                                      content: const Column(
                                                        mainAxisSize: MainAxisSize
                                                            .min,
                                                        children: [
                                                          Text(
                                                              style: TextStyle(
                                                                  fontSize: 14),
                                                              "고객 센터는 카카오톡에서 집토끼 채널을 추가해 문의해주세요!"
                                                          )
                                                        ],
                                                      ),
                                                      actions: [
                                                        Center(
                                                          child: MainButton(
                                                            buttonText: '확인',
                                                            buttonHeight: 40,
                                                            buttonWidth: 70,
                                                            myFontSize: 12,
                                                            myCallback: () {
                                                              Navigator.pop(context);
                                                            },
                                                          ),
                                                        )
                                                      ]);
                                                });
                                          },
                                          child: const Text('고객센터', style: TextStyle(
                                              fontFamily: 'SCDream',
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
          } else {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: const MainAppBar(text: '집토끼',),
              body: SafeArea(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 70,
                      alignment: Alignment.center,
                      child: AdWidget(ad: adMobViewModel.showBanner()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 50,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5.0, left: 10.0,),
                                child: Text(
                                  '로그인 후 \n사용해주세요',
                                  style: TextStyle(
                                      fontFamily: 'SCDream',
                                      fontSize: 30,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0),
                            child: Row(
                              children: [
                                Expanded(child: Divider(
                                  thickness: 0.5, color: Colors.grey[400],),),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    '간편 로그인으로 이용하기',
                                    style: TextStyle(
                                        fontFamily: 'SCDream',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[700]),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 0.5, color: Colors.grey[400],),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SignInButton(
                                imagePath: 'google_login_icon',
                                onTap: () =>
                                    signViewModel.signIn(context, 'google'),),
                              const SizedBox(width: 15,),
                              SignInButton(
                                imagePath: 'apple_login_icon',
                                onTap: () =>
                                    signViewModel.signIn(context, 'apple'),),
                            ],
                          ),
                          const SizedBox(height: 50,),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("회원가입을 진행할 경우, ", style: TextStyle(
                                    fontFamily: 'SCDream',
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (
                                            context) => const SystemInfoView()));
                                  },
                                  style: TextButton.styleFrom(
                                    minimumSize: Size.zero,
                                    padding: EdgeInsets.zero,
                                    tapTargetSize: MaterialTapTargetSize
                                        .shrinkWrap,),
                                  child: const DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(
                                        color: Colors.grey,),),
                                    ),
                                    child: Text('서비스 약관', style: TextStyle(
                                      fontFamily: 'SCDream',
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,),),
                                  ),
                                ),
                                const Text(" 및 ", style: TextStyle(
                                  fontFamily: 'SCDream',
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,),),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (
                                            context) => const SystemInfoView()));
                                  },
                                  style: TextButton.styleFrom(
                                    minimumSize: Size.zero,
                                    padding: EdgeInsets.zero,
                                    tapTargetSize: MaterialTapTargetSize
                                        .shrinkWrap,),
                                  child: const DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(
                                        color: Colors.grey,),),
                                    ),
                                    child: Text('개인정보 처리방침', style: TextStyle(
                                      fontFamily: 'SCDream',
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,),),
                                  ),
                                ),
                                const Text("에 동의한 것으로 간주합니다.", style: TextStyle(
                                  fontFamily: 'SCDream',
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,),),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        }
    );
  }
}