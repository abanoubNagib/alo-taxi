import 'package:alo_taxi/features/get_started/get_started_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.getStartedScreen:
        return MaterialPageRoute(
          builder: (_) => const GetStartedScreen(),
        );
    }
    return null;
  }
}