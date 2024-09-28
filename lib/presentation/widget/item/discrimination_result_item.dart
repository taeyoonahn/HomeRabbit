import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:home_rabbit/presentation/view_model/system_info_view_model.dart';
import 'package:provider/provider.dart';

class DiscriminationResultItem extends StatelessWidget {
  final String riskFactor;
  const DiscriminationResultItem({super.key, required this.riskFactor});

  @override
  Widget build(BuildContext context) {
    final houseViewModel = context.read<HouseViewModel>();
    final systemInfoViewModel = context.read<SystemInfoViewModel>();

    return InkWell(
      onTap: (){
        systemInfoViewModel.setCurrentRiskFactor(riskFactor);
        houseViewModel.goDetailManual(context,riskFactor);
      },
      child: Container(
        width: double.maxFinite,
        height: 200,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        decoration: BoxDecoration(
          color: HexColor('#1E319D'),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Image.asset('assets/icons/caution.png', width: 60),
            const SizedBox(height: 10),
            Text(
              '$riskFactor 주의',
              style: const TextStyle(
                fontFamily: 'SCDream',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              '카드를 클릭해 자세한 내용을 확인하세요',
              style: TextStyle(
                fontFamily: 'SCDream',
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}








