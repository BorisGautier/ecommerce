// ignore_for_file: file_names

import 'package:chopper/chopper.dart';
import 'package:ecommerce/src/core/utils/strings.dart';

part 'apiService.chopper.dart';

@ChopperApi(baseUrl: firebaseAuthUrl)
abstract class ApiService extends ChopperService {
  static ApiService create([ChopperClient? client]) => _$ApiService(client);

  @Post(
      path: "/accounts:signInWithCustomToken?key={firebaseApiKey}",
      headers: {'Accept': 'application/json'})
  Future<Response> login(
    @Body() Map<String, dynamic> body,
    @Path("firebaseApiKey") String firebaseApiKey,
  );

  @Post(
      path: "/accounts:signUp?key={firebaseApiKey}",
      headers: {'Accept': 'application/json'})
  Future<Response> register(
    @Body() Map<String, dynamic> body,
    @Path("firebaseApiKey") String firebaseApiKey,
  );
}
