import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const MainAppBar({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          height: 1.0,
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: 'SCDream',
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
      ),
      centerTitle: false,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(60);
}