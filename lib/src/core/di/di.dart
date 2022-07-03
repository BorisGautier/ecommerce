import 'package:ecommerce/src/core/helpers/networkHelper.dart';
import 'package:ecommerce/src/core/helpers/sharedPreferencesHelper.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  //Utils
  getIt.registerLazySingleton<NetworkInfoHelper>(() => NetworkInfoHelper());
  getIt.registerLazySingleton<SharedPreferencesHelper>(
      () => SharedPreferencesHelper());
}
