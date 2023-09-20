import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/assets/components/general_exception.dart';
import 'package:getx_mvvm/res/assets/components/internet_exception_widget.dart';
import 'package:getx_mvvm/res/assets/components/round_button.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/utils/utils.dart';
import 'package:getx_mvvm/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashSerices splashSerices = SplashSerices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashSerices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'welcome_back'.tr,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
