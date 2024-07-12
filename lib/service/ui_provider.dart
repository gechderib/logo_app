import 'package:flutter/widgets.dart';

class UiProvider extends ChangeNotifier {
  int activeIndex = 0;

  void changeIndex(int index) async {
    activeIndex = index;
    notifyListeners();
  }
}
