import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationViewModel extends ChangeNotifier {
  final StatefulNavigationShell navigationShell;

  NavigationViewModel({required this.navigationShell});

  void goBranch(int index) {
    navigationShell.goBranch(index);
    notifyListeners();
  }
}