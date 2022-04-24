import 'package:finance_friend/di/service%20utils/Services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> serviceLocator() async {
  getIt.registerSingleton((_)=>ServicesLocator());
}
