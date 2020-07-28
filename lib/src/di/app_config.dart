import 'package:domainchecker/src/network/repository/api_repository.dart';
import 'package:domainchecker/src/sharedpref/preference_connector.dart';
import 'package:domainchecker/src/utils/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt appConfig = GetIt.I;

void setupAppConfig() {
  appConfig.registerFactory(() => ApiRepository());
  appConfig.registerFactory(() => NavigationService());
  appConfig.registerFactory(() => PreferenceConnector());
}
