import 'package:flutter/material.dart';
import 'package:home_rabbit/presentation/widget/bottom_sheet/item_bottom_sheet.dart';
import 'package:home_rabbit/presentation/widget/item/house_rank_item.dart';
import 'package:provider/provider.dart';
import 'package:home_rabbit/domain/model/house.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';

class HouseItem extends StatelessWidget {
  final House house;
  const HouseItem({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    final houseViewModel = context.read<HouseViewModel>();

    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
      ),
      child: Center(
        child: ListTile(
          onTap: () async {
            await houseViewModel.setCurrentHouse(house);
            houseViewModel.discriminatingNavigate(context);
          },
          leading: HouseRankItem(houseRank: house.rank),
          title: Text(
            house.houseName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                      useRootNavigator: true,
                      backgroundColor: Colors.white,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                      ),
                      builder: (BuildContext context) {
                        return ItemBottomSheet(house: house);
                      }
                  );
                },
                child: const Icon(Icons.more_vert_outlined, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
