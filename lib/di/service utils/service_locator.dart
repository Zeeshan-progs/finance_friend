import 'package:finance_friend/di/service%20utils/Services.dart';
import 'package:finance_friend/di/store/home_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> serviceLocator() async {
// stores -------------------------------------------//
  getIt.registerFactory(() => HomeController());

  // nagigation service ------------------------------//
  getIt.registerLazySingleton(() => NavigationService());
}
