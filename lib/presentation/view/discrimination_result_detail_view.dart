import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_rabbit/presentation/view_model/system_info_view_model.dart';
import 'package:home_rabbit/presentation/widget/app_bar/go_back_app_bar.dart';
import 'package:provider/provider.dart';

class DiscriminationResultDetailView extends StatelessWidget {
  const DiscriminationResultDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final systemInfoViewModel = context.read<SystemInfoViewModel>();
    List<Widget> resultDetail = systemInfoViewModel.getCurrentResultDetail();

    return GestureDetector(
      onTap: () {FocusScope.of(context).unfocus();},
      child: Scaffold(
        backgroundColor: const Color(0xFF1E319D),
        appBar: GoBackAppBar(myCallback: () {context.go('/home/firstInput/secondInput/thirdInput/discriminationResult');}),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 200,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(width: 20,),
                            Image.asset('assets/icons/caution.png', width: 40),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const SizedBox(width: 20,),
                            Text(
                              style: const TextStyle(
                                fontFamily: 'SCDream',
                                fontSize: 25,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800,
                              ),
                              '${systemInfoViewModel.currentRiskFactor} 문제',
                            ),
                          ],
                        ),
                        const SizedBox(height: 3,),
                        const Row(
                          children: [
                            SizedBox(width: 21,),
                            Text(
                              style: TextStyle(
                                fontFamily: 'SCDream',
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w800,
                              ),
                              '꼼꼼이 읽어보시고 해결할 수 있는 문제인지 확인해보세요',
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 160,),
                        Container(
                          color: Colors.white,
                          child: Container(
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Color(0xFF1E319D),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: resultDetail
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

