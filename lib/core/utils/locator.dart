import 'package:get_it/get_it.dart';
import 'package:oneiro/core/data/local/local_cache.dart';
import 'package:oneiro/core/data/local/local_cache_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton(sharedPreferences);

  locator.registerLazySingleton<LocalCache>(() => LocalCacheImpl(
        sharedPreferences: sharedPreferences,
      ));
}
