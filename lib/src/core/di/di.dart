import 'package:chopper/chopper.dart';
import 'package:ecommerce/src/core/api/apiService.dart';
import 'package:ecommerce/src/core/helpers/networkHelper.dart';
import 'package:ecommerce/src/core/helpers/sharedPreferencesHelper.dart';
import 'package:ecommerce/src/core/utils/strings.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  final chopper = ChopperClient(
      baseUrl: firebaseAuthUrl,
      services: [ApiService.create()],
      converter: const JsonConverter());

  final apiService = ApiService.create(chopper);

  //Utils
  getIt.registerLazySingleton<NetworkInfoHelper>(() => NetworkInfoHelper());
  getIt.registerLazySingleton<SharedPreferencesHelper>(
      () => SharedPreferencesHelper());
}
