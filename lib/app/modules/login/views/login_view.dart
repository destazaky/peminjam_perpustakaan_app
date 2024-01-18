import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LoginView'),
          centerTitle: true,
        ),
        body: Center(
            child: Form(key: controller.formKey,
                child: Column(
                    children: [
                      TextFormField(
                        controller: controller.usernameController,
                        decoration: InputDecoration(
                            hintText: "Masukan Username"),
                        validator: (Value) {
                          if (Value!.isEmpty) {
                            return "Password tidak boleh kosong";
                          }
                          return null;
                        },

                      ),
                      TextFormField(
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                            hintText: "Masukan Password"),
                        validator: (Value) {
                          if (Value!.isEmpty) {
                            return "Password tidak boleh kosong";
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(onPressed: ()=>Get.toNamed(Routes.REGISTER),
                          child: Text("Register")),
                      Obx(() =>
                      controller.loadingLogin.value?
                      CircularProgressIndicator():
                      ElevatedButton(onPressed: (){
                        controller.login();
                      },
                          child: Text("Login")))
                    ]
                )
            )
        )
    );
  }
}




