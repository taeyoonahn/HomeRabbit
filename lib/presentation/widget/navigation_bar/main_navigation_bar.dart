import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:home_rabbit/presentation/view_model/loading_view_model.dart';
import 'package:provider/provider.dart';

class MainNavigationBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const MainNavigationBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: navigationShell,
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: '매물 점검',),
                BottomNavigationBarItem(icon: Icon(Icons.person_sharp), label: '내 정보',),
              ],
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.black45,
              currentIndex: navigationShell.currentIndex,
              onTap: (int index) {
                navigationShell.goBranch(index);
              },
            ),
          ),
        ),
        Consumer<LoadingViewModel>(
          builder: (context, loadingViewModel, child) {
            return Offstage(
                offstage: !loadingViewModel.isLoading,
                child: const Stack(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: ModalBarrier(dismissible: false, color: Colors.black),
                    ),
                    Center(
                      child: SpinKitCircle(color: Colors.indigo),
                    ),
                  ],
                )
            );
          },
        ),
      ],
    );
  }
}
