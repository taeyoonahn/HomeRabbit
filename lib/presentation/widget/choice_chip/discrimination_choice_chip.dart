import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:provider/provider.dart';

class DiscriminationChoiceChip extends StatelessWidget {
  final int choiceChipTheme;
  const DiscriminationChoiceChip({super.key, required this.choiceChipTheme});

  @override
  Widget build(BuildContext context) {
    return Consumer<HouseViewModel>(
      builder: (context, houseViewModel, child){
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceChip(
              label: const SizedBox(
                width: 60,
                height: 30,
                child: Center(
                  child: Text(
                    '네',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              selected: houseViewModel.getChoiceChip(choiceChipTheme)==1,
              onSelected: (onSelected){houseViewModel.handleChoiceChip(choiceChipTheme,1);},
              backgroundColor: Colors.white,
              selectedColor: HexColor('#1E319D'),
              side: BorderSide.none,
              shadowColor: Colors.grey[500],
              elevation: 2,
              showCheckmark: false,
            ),
            const SizedBox(width: 15,),
            ChoiceChip(
              label: const SizedBox(
                width: 60,
                height: 30,
                child: Center(
                  child: Text(
                    '아니오',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              selected: houseViewModel.getChoiceChip(choiceChipTheme)==0,
              onSelected: (onSelected){houseViewModel.handleChoiceChip(choiceChipTheme,0);},
              backgroundColor: Colors.white,
              selectedColor: HexColor('#1E319D'),
              side: BorderSide.none,
              shadowColor: Colors.grey[500],
              elevation: 2,
              showCheckmark: false,
            ),
            const SizedBox(width: 15,),
            ChoiceChip(
              label: const SizedBox(
                width: 60,
                height: 30,
                child: Center(
                  child: Text(
                    '모르겠어요',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              selected: houseViewModel.getChoiceChip(choiceChipTheme)==2,
              onSelected: (onSelected){houseViewModel.handleChoiceChip(choiceChipTheme,2);},
              backgroundColor: Colors.white,
              selectedColor: HexColor('#1E319D'),
              side: BorderSide.none,
              shadowColor: Colors.grey[500],
              elevation: 2,
              showCheckmark: false,
            ),
          ],
        );
      },
    );
  }
}
