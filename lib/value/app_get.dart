import 'package:get/get.dart';

class AppGet extends GetxController {
  //Change the screen Index
  int indexScreen = 0;

  setIndexScreen(int value) {
    this.indexScreen = value;
    update();
  }
}
