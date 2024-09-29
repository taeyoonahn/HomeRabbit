import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/presentation/widget/choice_chip/discrimination_choice_chip.dart';
import 'package:home_rabbit/presentation/widget/item/discrimination_info_item.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:home_rabbit/presentation/view_model/system_info_view_model.dart';
import 'package:home_rabbit/presentation/widget/app_bar/go_back_app_bar.dart';
import 'package:provider/provider.dart';

class FirstInputView extends StatelessWidget {
  const FirstInputView({super.key});

  @override
  Widget build(BuildContext context) {
    final systemInfoViewModel = context.read<SystemInfoViewModel>();

    return Scaffold(
      appBar: GoBackAppBar(
        myCallback: () {
          context.go('/home');
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearPercentIndicator(
                  width: 300,
                  lineHeight: 24.0,
                  percent: 0.33,
                  animation: true,
                  animationDuration: 1000,
                  backgroundColor: Colors.white,
                  progressColor: HexColor('#1E319D'),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(9, 0, 5, 0),
                  child: Text(
                    '(1/3)',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Text(
                      '1. 계약서 상의 집주인과 대면해\n신분증을 확인하지 못하셨나요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DiscriminationChoiceChip(
                    choiceChipTheme: 1,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('대리인 이중계약');
                        context.go('/home/firstInput/info');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Text(
                      '2. 기존 세입자가 계약일 전에 이사를 완료하지 않았나요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DiscriminationChoiceChip(
                    choiceChipTheme: 2,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('동일매물 중복계약');
                        context.go('/home/firstInput/info');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Text(
                      '3. 등기부등본의 <갑구>란에 소유자가 수탁자 OOO 신탁이라고 적혀있나요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DiscriminationChoiceChip(
                    choiceChipTheme: 3,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('신탁 거래');
                        context.go('/home/firstInput/info');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Text(
                      '4. 집주인이 체납 중인 세금이 존재하나요?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DiscriminationChoiceChip(
                    choiceChipTheme: 4,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: DiscriminationInfoItem(
                      infoText: '이곳에서 관련 상세 안내를 확인하세요!',
                      myCallback: () {
                        systemInfoViewModel
                            .setCurrentQuestionInfoFactor('동일매물 중복계약');
                        context.go('/home/firstInput/info');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: Image.asset('assets/icons/larrow.png',
                                width: 60)),
                        GestureDetector(
                            onTap: () {
                              context.go('/home/firstInput/secondInput');
                            },
                            child: Image.asset('assets/icons/rarrow.png',
                                width: 60)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
