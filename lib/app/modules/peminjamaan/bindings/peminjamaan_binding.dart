import 'package:get/get.dart';

import '../controllers/peminjamaan_controller.dart';

class PeminjamaanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PeminjamaanController>(
      () => PeminjamaanController(),
    );
  }
}
