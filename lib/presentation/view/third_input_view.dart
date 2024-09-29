import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:home_rabbit/presentation/view_model/system_info_view_model.dart';
import 'package:home_rabbit/presentation/widget/app_bar/go_back_app_bar.dart';
import 'package:home_rabbit/presentation/widget/item/discrimination_info_item.dart';
import 'package:home_rabbit/presentation/widget/text_field/discrimination_number_input_text_field.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';


class ThirdInputView extends StatelessWidget {
  const ThirdInputView({super.key});

  @override
  Widget build(BuildContext context) {
    final systemInfoViewModel = context.read<SystemInfoViewModel>();
    final houseViewModel = context.read<HouseViewModel>();

    return Scaffold(
      appBar: GoBackAppBar(myCallback: () {context.go('/home');},),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearPercentIndicator(
                  width: 300,
                  lineHeight: 24.0,
                  percent: 1.0,
                  animationDuration: 1000,
                  backgroundColor: Colors.white,
                  progressColor: HexColor('#1E319D'),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(9, 0, 5, 0),
                  child: Text(
                    '(3/3)',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: <Widget>[
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Text(
                      '9. 해당 매물의 근저당권은 얼마인가요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const DiscriminationNumberInputTextField(numberInputTheme: 9,),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('근저당권');
                        context.go('/home/firstInput/info');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(thickness: 1, height:1, color: Colors.grey,),
                  ),
                  const SizedBox(height: 25,),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Text(
                      '10. 해당 매물의 선순위 보증금의 총합은 얼마인가요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const DiscriminationNumberInputTextField(numberInputTheme: 10,),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('선순위 보증금');
                        context.go('/home/firstInput/info');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(thickness: 1, height:1, color: Colors.grey,),
                  ),
                  const SizedBox(height: 25,),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Text(
                      '11. 해당 매물의 전세보증금액은 얼마인가요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const DiscriminationNumberInputTextField(numberInputTheme: 11,),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('전세보증금액');
                        context.go('/home/firstInput/info');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(thickness: 1, height:1, color: Colors.grey,),
                  ),
                  const SizedBox(height: 25,),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Text(
                      '12. 해당 매물의 최우선변제금액은 얼마인가요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const DiscriminationNumberInputTextField(numberInputTheme: 12,),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('최우선 변제금액');
                        context.go('/home/firstInput/info');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(thickness: 1, height:1, color: Colors.grey,),
                  ),
                  const SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: (){
                              context.pop();
                            },
                            child: Image.asset('assets/icons/larrow.png',width:60)
                        ),
                        GestureDetector(
                            onTap: (){
                              houseViewModel.turnIsDiscriminatedTrue();
                              houseViewModel.assessFinancialRisk();
                              houseViewModel.assessRisk();
                              context.go('/home/firstInput/secondInput/thirdInput/discriminationResult');
                            },
                            child: Image.asset('assets/icons/rarrow.png',width:60)
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}