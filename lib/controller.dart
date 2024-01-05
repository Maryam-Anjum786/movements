import 'package:get/get.dart';

class Controller extends GetxController {
  late RxList<bool> isFavorite;
  RxBool selectedButtonIndex = false.obs;
  RxBool lengthButtonIndex = false.obs;

  Controller() {
    isFavorite = List.generate(5, (index) => false).obs;
  }

  void toggleVisibility() {
    selectedButtonIndex.toggle();
  }

  void isClicked() {
    lengthButtonIndex.toggle();
  }

  void toggleIcon(int index) {
    isFavorite[index] = !isFavorite[index];
  }
}
