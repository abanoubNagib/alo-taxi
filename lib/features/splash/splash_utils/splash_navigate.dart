import 'dart:async';
import 'package:alo_taxi/core/helpers/extensions.dart';
import 'package:alo_taxi/core/routing/routes.dart';
import 'package:flutter/material.dart';


void navigateToOnboarding(BuildContext context) {
  Timer(const Duration(seconds: 5), () {
    context.pushReplacementNamed(Routes.loginScreen);
  });
}