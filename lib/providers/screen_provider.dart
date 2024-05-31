import 'package:flutter/cupertino.dart';

class ScreenProvider extends ChangeNotifier {
  int _screen_index = 0;
  final PageController _pageController = PageController(initialPage: 0);

  int get screen_index => _screen_index;
  PageController get pageController => _pageController;

  void setScreenIndex(int index) {
    _screen_index = index;
    _pageController.animateToPage(
      _screen_index, 
      duration: Duration(milliseconds: 200), 
      curve: Curves.easeInOut,
      
    );
    notifyListeners();
  }
}
