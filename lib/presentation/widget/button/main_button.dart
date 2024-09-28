import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MainButton extends StatelessWidget {
  final String buttonText;
  final double buttonWidth;
  final double buttonHeight;
  final double myFontSize;
  final VoidCallback? myCallback;
  const MainButton({super.key, required this.buttonText, required this.buttonWidth, required this.buttonHeight,required this.myFontSize, this.myCallback, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myCallback,
      child: Container(
        padding: const EdgeInsets.all(0),
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
            color: HexColor('#1E319D'),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500]!,
                offset: const Offset(4,4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              )
            ]
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'SCDream',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: myFontSize,
            ),
          ),
        ),
      ),
    );
  }
}