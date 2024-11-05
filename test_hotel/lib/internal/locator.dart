import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_hotel/presentation/image_error_message.dart';

import 'package:test_hotel/domain/service/api_hotel_service.dart';
import 'package:test_hotel/internal/date_format.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton<ApiHotelService>(()=> ApiHotelService(Dio(BaseOptions(contentType: "application/json"))));
  locator.registerLazySingleton<DateTextFormatter>(()=>DateTextFormatter());
  locator.registerLazySingleton<ImageErrorMessage>(() => const ImageErrorMessage());
}