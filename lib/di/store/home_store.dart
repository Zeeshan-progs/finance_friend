import 'package:get/get.dart';

class HomeController extends GetxController {
  // --------  observable variables ----------

/*home screen tab switch index */
  RxInt tabIndex = 0.obs;

// ----------- actions to perform operations ------------------

  void setTabIndex(int index) {
    tabIndex.value = index;
  }
}
