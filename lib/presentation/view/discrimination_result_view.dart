import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:home_rabbit/presentation/widget/app_bar/go_back_app_bar.dart';
import 'package:home_rabbit/presentation/widget/button/main_button.dart';
import 'package:provider/provider.dart';

class DiscriminationResultView extends StatelessWidget {
  const DiscriminationResultView({super.key});

  @override
  Widget build(BuildContext context) {
    final houseViewModel = context.read<HouseViewModel>();
    final List<Widget> resultList = houseViewModel.showDiscriminationWidget();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: GoBackAppBar(myCallback: () {context.go('/home');},),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 340,
                  padding: const EdgeInsets.symmetric(vertical: 22),
                  color: HexColor('#1E319D'),
                  child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '안전 보고서',
                            style: TextStyle(
                              fontFamily: 'SCDream',
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Stack(
                            children: [
                              Text(
                                houseViewModel.currentHouse!.rank,
                                style: TextStyle(
                                  fontFamily: 'SCDream',
                                  fontSize: 100.0,
                                  fontWeight: FontWeight.bold,
                                  color: houseViewModel.showHouseColor(),
                                ),
                              ),
                              Column(
                                children: [
                                  const SizedBox(height: 112,),
                                  Text(
                                    ' ${houseViewModel.currentHouse!.houseName}의 안전등급',
                                    style: TextStyle(
                                      fontFamily: 'SCDream',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30,),
                          Text(
                            houseViewModel.showHouseRisk(),
                            style: const TextStyle(
                                fontFamily: 'SCDream',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          houseViewModel.currentHouse!.rank == 'A'
                              ? const Text(
                            '관련 정보를 주기적으로 체크해주세요',
                            style: TextStyle(
                                fontFamily: 'SCDream',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                              : const Text(
                            '아래의 주의 항목들을 확인해보세요',
                            style: TextStyle(
                                fontFamily: 'SCDream',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Column(
                  children: resultList,
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MainButton(
                    buttonText: '다시 점검',
                    buttonWidth: double.infinity,
                    buttonHeight: 55,
                    myFontSize: 20,
                    myCallback: (){
                      context.go('/home/firstInput');
                    },
                  ),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
