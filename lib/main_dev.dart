import 'package:alo_taxi/core/routing/app_router.dart';
import 'package:alo_taxi/core/utils/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'alo_taxi_app.dart';

Future<void> main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(AloTaxiApp(appRouter: AppRouter()));
}
