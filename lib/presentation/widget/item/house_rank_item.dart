import 'package:flutter/material.dart';

class HouseRankItem extends StatelessWidget {
  final String houseRank;
  const HouseRankItem({super.key, required this.houseRank});

  @override
  Widget build(BuildContext context) {
    switch (houseRank) {
      case 'TBD':
        return Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.grey.shade600,
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Center(
            child: Text(
              '?',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
        );
      case 'A':
        return Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.blue.shade400,
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Center(
            child: Text(
              'A',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
        );
      case "B":
        return Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.greenAccent.shade700,
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Center(
            child: Text(
              'B',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
        );
      case "C":
        return Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Center(
            child: Text(
              'C',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
        );
      case "D":
        return Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Center(
            child: Text(
              'D',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
        );
      default:
        return Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Center(
            child: Text(
              '?',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
        );
    }
  }
}
