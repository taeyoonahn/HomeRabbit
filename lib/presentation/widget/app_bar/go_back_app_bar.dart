import 'package:flutter/material.dart';

class GoBackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback myCallback;
  const GoBackAppBar({super.key, required this.myCallback});

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
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          onPressed: myCallback,
        ),
      ),
      centerTitle: false,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(60);
}