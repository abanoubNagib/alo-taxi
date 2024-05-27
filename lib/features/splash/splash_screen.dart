import 'dart:async';
import 'package:alo_taxi/core/helpers/extensions.dart';
import 'package:alo_taxi/core/routing/routes.dart';
import 'package:alo_taxi/core/theme/light_colors.dart';
import 'package:alo_taxi/features/splash/splash_widgets/splash_build.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      context.pushReplacementNamed(
        Routes.loginScreen
        // MyStrings.token == ''
        //     ? MyStrings.isFirstTimeToOpenApp == true
        //         ? Routes.onboarding
        //         : Routes.login
        //     : Routes.layout,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColorsManager.background,
      body: buildBody(context),
    );
  }
}
