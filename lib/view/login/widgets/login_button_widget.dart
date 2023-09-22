import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx_mvvm/res/assets/components/round_button.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  final formkey;

  LoginButtonWidget({super.key, required this.formkey});

  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
        width: 200,
        title: "login".tr,
        loading: loginVM.loading.value,
        onPress: () {
          if (formkey.currentState!.validate()) {
            loginVM.loginApi();
          }
        }));
  }
}
