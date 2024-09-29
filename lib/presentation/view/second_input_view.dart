import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/presentation/view_model/system_info_view_model.dart';
import 'package:home_rabbit/presentation/widget/app_bar/go_back_app_bar.dart';
import 'package:home_rabbit/presentation/widget/choice_chip/discrimination_choice_chip.dart';
import 'package:home_rabbit/presentation/widget/item/discrimination_info_item.dart';
import 'package:home_rabbit/presentation/widget/text_field/discrimination_number_input_text_field.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

class SecondInputView extends StatelessWidget {
  const SecondInputView({super.key});

  @override
  Widget build(BuildContext context) {
    final systemInfoViewModel = context.read<SystemInfoViewModel>();

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
                  percent: 0.66,
                  animation: true,
                  animationDuration: 1000,
                  backgroundColor: Colors.white,
                  progressColor: HexColor('#1E319D'),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(9, 0, 5, 0),
                  child: Text(
                    '(2/3)',
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
                      '5. 건축물대장에 위반건축물 표기가 되어있나요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const DiscriminationChoiceChip(choiceChipTheme: 5,),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('불법 건축물');
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
                      '6. 중개사가 공인중개사 자격증을 가지고 있지 않나요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const DiscriminationChoiceChip(choiceChipTheme: 6,),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('공인중개사 신뢰 불가');
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
                      '7. 해당 매물의 전세 보증 보험 가입이 불가능한가요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const DiscriminationChoiceChip(choiceChipTheme: 7,),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('보험 가입 불가');
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
                      '8. 해당 매물의 시세는 얼마인가요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const DiscriminationNumberInputTextField(numberInputTheme: 8,),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('매물 시세');
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
                              context.go('/home/firstInput/secondInput/thirdInput');
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