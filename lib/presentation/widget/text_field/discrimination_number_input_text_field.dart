import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_rabbit/presentation/view_model/house_view_model.dart';
import 'package:provider/provider.dart';

class DiscriminationNumberInputTextField extends StatelessWidget {
  final int numberInputTheme;
  const DiscriminationNumberInputTextField({super.key, required this. numberInputTheme});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Consumer<HouseViewModel>(
      builder: (context, houseViewModel, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 40),
                Flexible(
                  flex: 7,
                  child: TextField(
                    controller: controller,
                    onSubmitted: houseViewModel.handleNumberInput(numberInputTheme,controller.text),
                    keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true,),
                    textAlign: TextAlign.right,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                    ],
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(
                              color: Colors.black87, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: HexColor('#1E319D'),
                              width: 1.5),
                        ),
                        fillColor: Colors.white70,
                        filled: true,
                        hintText: houseViewModel.getNumberInputText(numberInputTheme).toString(),
                        hintStyle: TextStyle(color: Colors.grey[800])
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Flexible(
                  flex: 1,
                  child: Text(
                    '만원',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ],
        );
      },
    );
  }
}