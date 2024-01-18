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
        body: controller.obx((state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text("${state[index].book?.judul}"),
              subtitle: Text("${state[index].book?.penulis}"),
              trailing: Text("${state[index].status}"),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ))
    );
  }
}