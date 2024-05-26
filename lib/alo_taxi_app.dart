import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theme/light_colors.dart';

class AloTaxiApp extends StatelessWidget {
  final AppRouter appRouter;
  const AloTaxiApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Alo Taxi App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: LightColors.primary),
          primaryColor: LightColors.primary,
          scaffoldBackgroundColor: LightColors.white,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.getStartedScreen,
      ),
    );
  }
}
