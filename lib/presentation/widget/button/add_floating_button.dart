import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:home_rabbit/presentation/widget/button/main_button.dart';
import 'package:provider/provider.dart';

class AddFloatingButton extends StatelessWidget {
  const AddFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final houseViewModel = context.read<HouseViewModel>();
    final controller = TextEditingController();
    String houseName;

    return FloatingActionButton(
      heroTag: 'add',
      onPressed: () {
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
                          '점검 대상 매물의\n이름을 설정해주세요',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 40,),
                      Expanded(
                        child: TextField(
                          controller: controller,
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                                borderSide: BorderSide(
                                    color: Colors.black87, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: HexColor('#1E319D'), width: 1.5),
                              ),
                              fillColor: Colors.white70,
                              filled: true,
                              hintText: '입력해주세요',
                              hintStyle:
                              TextStyle(color: Colors.grey[800])),
                        ),
                      ),
                      const SizedBox(width: 40,),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainButton(
                        buttonText: '등록',
                        buttonWidth: 100,
                        buttonHeight: 40,
                        myFontSize: 20,
                        myCallback: () async {
                          houseName = controller.text;
                          controller.text="";
                          var isExist = await houseViewModel.getHouse(houseName);
                          if(isExist==null){
                            houseViewModel.addHouse(houseName);
                            Navigator.pop(context);
                          } else {
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
                                              style: TextStyle(fontSize: 14), "이미 동일한 이름의 매물이 존재합니다."
                                          )
                                        ],
                                      ),
                                      actions:[
                                        Center(
                                          child: MainButton(
                                            buttonText: '확인',
                                            buttonHeight: 40,
                                            buttonWidth: 70,
                                            myFontSize: 12,
                                            myCallback: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        )
                                      ]
                                  );
                                }
                            );
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
      shape: const CircleBorder(),
      backgroundColor: HexColor('#1E319D'),
      child: const Icon(Icons.add_home, color: Colors.white),
    );
  }
}