import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:mvp_example/core/api/api_client.dart';

import 'src/contoller/post_screen_controller.dart';


final locator = GetIt.I;

void setup() {

  // ================ Core ================ //

  locator.registerLazySingleton(() => Client());
  locator.registerLazySingleton<ApiClient>(() => ApiClientImpl(locator()));


  // ================ Controllers ================ //

  locator.registerLazySingleton(() => PostScreenController(locator()));


}
