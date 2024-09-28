import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:home_rabbit/presentation/view_model/ad_mob_view_model.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:home_rabbit/presentation/view_model/navigation_view_model.dart';
import 'package:home_rabbit/presentation/view_model/service_user_view_model.dart';
import 'package:home_rabbit/presentation/widget/app_bar/main_app_bar.dart';
import 'package:home_rabbit/presentation/widget/button/add_floating_button.dart';
import 'package:home_rabbit/presentation/widget/button/main_button.dart';
import 'package:home_rabbit/presentation/widget/button/up_floating_button.dart';
import 'package:home_rabbit/presentation/widget/item/house_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final adMobViewModel = context.read<AdMobViewModel>();
    final navigationViewModel = context.read<NavigationViewModel>();
    adMobViewModel.disposeBanner();
    adMobViewModel.loadBanner();
    final ScrollController scrollController = ScrollController();

    return Consumer2<ServiceUserViewModel, HouseViewModel>(
      builder: (context, serviceUserViewModel, houseViewModel, child) {
        return serviceUserViewModel.user != null
            ? (!serviceUserViewModel.isSubscribed
            ? Scaffold(
            resizeToAvoidBottomInset: false,
            floatingActionButton: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: AddFloatingButton(),
                ),
                const SizedBox(
                  width: 8,
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: UpFloatingButton(
                      scrollController: scrollController),
                ),
              ],
            ),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerFloat,
            appBar: const MainAppBar(
              text: '집토끼',
            ),
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
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  houseViewModel.myHouses!.isNotEmpty
                      ? Flexible(
                      child: Container(
                        color: Colors.white,
                        child: ListView.builder(
                            controller: scrollController,
                            shrinkWrap: true,
                            itemCount:
                            houseViewModel.myHouses!.length,
                            itemBuilder: (context, index) {
                              return HouseItem(
                                  house: houseViewModel
                                      .myHouses![index]);
                            }),
                      ))
                      : const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                '분석 대상이 없습니다',
                                style: TextStyle(
                                    fontFamily: 'SCDream',
                                    fontSize: 25,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                '분석할 매물을 추가해주세요!',
                                style: TextStyle(
                                    fontFamily: 'SCDream',
                                    fontSize: 25,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 100,),
                      ],
                    ),
                  ),
                ],
              ),
            ))
            : Scaffold(
          appBar: const MainAppBar(
            text: '집토끼',
          ),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  alignment: Alignment.center,
                  child: AdWidget(ad: adMobViewModel.showBanner()),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 400,
                          padding: const EdgeInsets.symmetric(
                              vertical: 22),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.purple, Colors.blue],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.black12, width: 1.5),
                          ),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 22),
                                child: const Column(
                                  children: [
                                    Text(
                                      '집토끼 구독하고\n전세 사기 예방해요!',
                                      style: TextStyle(
                                          fontFamily: 'SCDream',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              Center(
                                  child: Image.asset(
                                      'assets/icons/check.png',
                                      width: 90)),
                              const SizedBox(
                                height: 60,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Text(
                                      '커피 한 잔 가격으로',
                                      style: TextStyle(
                                          fontFamily: 'SCDream',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber),
                                    ),
                                  ],
                                ),
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Text(
                                      '7주간 무제한 전세 위험 분석!',
                                      style: TextStyle(
                                          fontFamily: 'SCDream',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(), // Fill the remaining space
                        MainButton(
                          buttonText: '집토끼 구독하기',
                          buttonWidth: double.infinity,
                          buttonHeight: 55,
                          myFontSize: 20,
                          myCallback: () {
                            navigationViewModel.goBranch(1);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ))
            : Scaffold(
          appBar: const MainAppBar(
            text: '집토끼',
          ),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  alignment: Alignment.center,
                  child: AdWidget(ad: adMobViewModel.showBanner()),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 400,
                          padding:
                          const EdgeInsets.symmetric(vertical: 22),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.purple, Colors.blue],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.black12, width: 1.5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 22),
                                child: const Column(
                                  children: [
                                    Text(
                                      '세상 무엇보다 소중한 내 보증금\n혹시 위험하진 않을까?',
                                      style: TextStyle(
                                          fontFamily: 'SCDream',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              Center(
                                  child: Image.asset(
                                      'assets/icons/money.png',
                                      width: 90)),
                              const SizedBox(
                                height: 60,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Text(
                                      '커피 한 잔 가격으로',
                                      style: TextStyle(
                                          fontFamily: 'SCDream',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber),
                                    ),
                                  ],
                                ),
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Text(
                                      '7주간 무제한 전세 위험 분석!',
                                      style: TextStyle(
                                          fontFamily: 'SCDream',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(), // Fill the remaining space
                        MainButton(
                          buttonText: '집토끼 구독하고 전세 사기 방지하기',
                          buttonWidth: double.infinity,
                          buttonHeight: 55,
                          myFontSize: 20,
                          myCallback: () {
                            navigationViewModel.goBranch(1);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

