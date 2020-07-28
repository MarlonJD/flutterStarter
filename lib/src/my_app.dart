import 'package:domainchecker/src/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:domainchecker/src/constants/string_constant.dart';
import 'package:domainchecker/src/di/app_config.dart';
// import 'package:domainchecker/src/network/repository/api_repository.dart';
import 'package:domainchecker/src/resources/app_theme.dart';
import 'package:domainchecker/src/utils/navigation_service.dart';
import 'package:domainchecker/src/utils/router.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final apiRepository = ApiRepository();
    //login bloc
    return MaterialApp(
            title: StringConstant.app_name,
            theme: AppTheme.appTheme(),
            navigatorKey: appConfig<NavigationService>().navigatorKey,
            onGenerateRoute: Router.generateRoute,
            debugShowCheckedModeBanner: false,
            home: HomeScreen());
  }
}