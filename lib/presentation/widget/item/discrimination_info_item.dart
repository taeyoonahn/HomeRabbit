import 'package:flutter/material.dart';

class DiscriminationInfoItem extends StatelessWidget {
  final String infoText;
  final VoidCallback? myCallback;
  const DiscriminationInfoItem({super.key, required this.infoText, this.myCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myCallback,
      child: Row(
          children: [
            const Icon(
                Icons.info_outline,
                size: 16,
                color: Colors.grey
            ),
            const SizedBox(width: 5,),
            Text(
              infoText,
              style: const TextStyle(fontSize: 14,),
            ),
          ]
      ),
    );
  }
}
