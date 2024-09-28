import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/domain/model/house.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:home_rabbit/presentation/widget/button/main_button.dart';
import 'package:provider/provider.dart';

class ItemBottomSheet extends StatelessWidget {
  final House house;
  const ItemBottomSheet({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    final houseViewModel = context.read<HouseViewModel>();
    final controller = TextEditingController();
    String newHouseName;

    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.edit,size: 17,),
            title: const Text(
              '매물명 수정',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 15,
              ),
            ),
            visualDensity: const VisualDensity(horizontal: 0,vertical: -3),
            onTap: () {
              showModalBottomSheet(
                context: context,
                useRootNavigator: true,
                isScrollControlled: true,
                builder: (context) => Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: double.infinity,
                    height: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                '점검 대상 매물의\n이름을 다시 설정해주세요',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: TextField(
                                controller: controller,
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.all(10),
                                    enabledBorder:
                                    const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.0)),
                                      borderSide: BorderSide(
                                          color: Colors.black87,
                                          width: 1.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor('#1E319D'),
                                          width: 1.5),
                                    ),
                                    fillColor: Colors.white70,
                                    filled: true,
                                    hintText: '입력해주세요',
                                    hintStyle: TextStyle(
                                        color: Colors.grey[800])),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MainButton(
                              buttonText: '변경',
                              buttonWidth: 100,
                              buttonHeight: 40,
                              myFontSize: 20,
                              myCallback: () async {
                                newHouseName = controller.text;
                                controller.text = "";
                                var isExist = await houseViewModel.getHouse(newHouseName);
                                if (isExist==null) {
                                  House updatedHouse = house;
                                  updatedHouse.houseName = newHouseName;
                                  houseViewModel.updateHouse(updatedHouse);
                                  context.pop();
                                } else if(house.houseName==newHouseName) {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                            backgroundColor: Colors.white,
                                            content: const Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                    style: TextStyle(fontSize: 14), "현재 매물의 이름과 같습니다"
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
                                                    context.pop();
                                                  },
                                                ),
                                              )
                                            ]);
                                      });
                                } else {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                            content: const Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                    style: TextStyle(fontSize: 14), "이미 동일한 이름의 매물이 존재합니다."
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
                                                    context.pop();
                                                  },
                                                ),
                                              )
                                            ]);
                                      });
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            leading: const Icon(Icons.delete,size: 17,),
            title: const Text(
              '삭제',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 15,
              ),
            ),
            visualDensity: const VisualDensity(horizontal: 0,vertical: -3),
            onTap: () {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        backgroundColor: Colors.white,
                        content: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                                style: TextStyle(fontSize: 14), "해당 매물을 삭제하시겠습니까?\n삭제한 매물은 되돌릴 수 없습니다."
                            )
                          ],
                        ),
                        actions: [
                          Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                MainButton(
                                  buttonText: '삭제',
                                  buttonHeight: 40,
                                  buttonWidth: 70,
                                  myFontSize: 12,
                                  myCallback: () async {
                                    houseViewModel.deleteHouse(house.id);
                                    context.pop();
                                    context.pop();
                                  },
                                ),
                                const SizedBox(width: 30,),
                                MainButton(
                                  buttonText: '취소',
                                  buttonHeight: 40,
                                  buttonWidth: 70,
                                  myFontSize: 12,
                                  myCallback: () {
                                    context.pop();
                                    context.pop();
                                  },
                                ),
                              ],
                            ),
                          )
                        ]);
                  });
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            leading: const Icon(Icons.close,size: 17,),
            title: const Text(
              '취소',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 15,
              ),
            ),
            visualDensity: const VisualDensity(horizontal: 0,vertical: -3),
            onTap: (){
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
