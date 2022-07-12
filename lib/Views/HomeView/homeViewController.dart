import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeViewController extends GetxController {
  RxInt num = 0.obs;

  incrementNumber() {
    num.value++;
  }

  decrementNumber() {
    num.value--;
  }
}
