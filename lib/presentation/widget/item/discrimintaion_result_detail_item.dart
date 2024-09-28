import 'package:flutter/material.dart';

class DiscriminationResultDetailItem extends StatelessWidget {
  final String resultInfoText;
  const DiscriminationResultDetailItem({super.key, required this.resultInfoText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 1,),
                    Image.asset('assets/icons/shield_detail.png', width: 30),
                  ],
                ),
                const SizedBox(width: 12,),
                Flexible(
                  child: Text(
                    resultInfoText,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}