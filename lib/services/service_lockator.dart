import 'package:get_it/get_it.dart';
import 'package:home_x/data/services/cache_helper.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
