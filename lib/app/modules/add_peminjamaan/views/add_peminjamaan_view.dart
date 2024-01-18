import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_peminjamaan_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamaanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddPeminjamanView'),
          centerTitle: true,
        ),
        body: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.tanggalpinjamController,
                decoration: InputDecoration(hintText: "Masukkan Tanggal Pinjam"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Tanggal pinjam tidak boleh kosong";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.tanggalkembaliController,
                decoration: InputDecoration(hintText: "Masukkan Tanggal Kembali"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Tanggal kembali tidak boleh kosong";
                  }
                  return null;
                },
              ),
              Obx(() {
                return controller.loading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(onPressed: () => controller.post(), child: const Text("Pinjam"));
              }).paddingOnly(top: 16)
            ],
          ).paddingOnly(left: 16, right: 16),
        )
    );
  }
}
