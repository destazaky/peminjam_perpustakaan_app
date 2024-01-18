import 'package:get/get.dart';

import '../controllers/add_peminjamaan_controller.dart';

class AddPeminjamaanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPeminjamaanController>(
      () => AddPeminjamaanController(),
    );
  }
}
