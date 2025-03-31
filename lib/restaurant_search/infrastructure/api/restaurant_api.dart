import 'package:dio/dio.dart';
import 'package:flutter_interview/restaurant_search/infrastructure/models/restaurant_payload.dart';
import 'package:retrofit/retrofit.dart';

part 'restaurant_api.g.dart';

// IMPORTANT: Due to some weird cert issue, please inject Dio from the
// createDio() function in 'package:flutter_interview/create_dio.dart'

@RestApi(baseUrl: 'http://jsonmock.hackerrank.com/')
abstract class RestaurantApi {
  factory RestaurantApi(Dio dio, {String baseUrl}) = _RestaurantApi;

  @GET('/api/food_outlets')
  // There are 40 total pages - first page is 1
  Future<RestaurantPayload> getRestaurants({
    @Query('page') int page = 1,
    @Query('city') String? city,
  });
}
