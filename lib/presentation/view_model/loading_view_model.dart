import 'package:flutter/material.dart';

class LoadingViewModel extends ChangeNotifier{
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void loading() {
    _isLoading = true;
    notifyListeners();
  }

  void notLoading() {
    _isLoading = false;
    notifyListeners();
  }
}