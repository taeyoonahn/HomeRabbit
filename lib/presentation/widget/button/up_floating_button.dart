import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hexcolor/hexcolor.dart';

class UpFloatingButton extends StatelessWidget {
  final ScrollController scrollController;
  const UpFloatingButton({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'up',
      onPressed: () {
        scrollController.animateTo(
          0,
          duration: const Duration(microseconds: 80),
          curve: Curves.easeInOut,
        );
      },
      shape: const CircleBorder(),
      backgroundColor: HexColor('#1E319D'),
      child: const Icon(Entypo.arrow_bold_up, color: Colors.white,),
    );
  }
}