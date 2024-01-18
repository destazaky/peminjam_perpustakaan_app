import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peminjamaan_controller.dart';

class PeminjamaanView extends GetView<PeminjamaanController> {
  const PeminjamaanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamaanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PeminjamaanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
