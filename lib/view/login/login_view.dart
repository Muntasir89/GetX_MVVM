import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/assets/components/round_button.dart';
import 'package:getx_mvvm/res/utils/utils.dart';
import 'package:getx_mvvm/view/login/widgets/input_email_widget.dart';
import 'package:getx_mvvm/view/login/widgets/input_password_widget.dart';
import 'package:getx_mvvm/view/login/widgets/login_button_widget.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Login".tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  InputEmailWidget(),
                  SizedBox(height: 30),
                  InputPasswordWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            LoginButtonWidget(formkey: _formkey),
          ],
        ),
      ),
    );
  }
}
