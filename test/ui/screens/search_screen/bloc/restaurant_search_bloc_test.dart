import 'package:flutter_interview/restaurant_search/infrastructure/api/restaurant_api.dart';
import 'package:flutter_interview/restaurant_search/infrastructure/models/restaurant_payload.dart';
import 'package:flutter_interview/restaurant_search/ui/screens/search_screen/bloc/model/restaurant_search_model.dart';
import 'package:flutter_interview/restaurant_search/ui/screens/search_screen/bloc/restaurant_search_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRestaurantApi extends Mock implements RestaurantApi {}

void main() {
  late RestaurantApi api;

  setUp(() {
    api = MockRestaurantApi();
  });

  final mockRestaurants = [
    const Restaurant(
      id: 1,
      city: 'Seattle',
      name: 'Mock Place',
      userRating: UserRating(
        averageRating: 4.0,
        votes: 5,
      ),
      estimatedCost: 25,
    )
  ];

  final mockPayload = RestaurantPayload(
    data: mockRestaurants,
    perPage: 10,
    page: 1,
    totalPages: 2,
    total: 20,
  );

  blocTest<RestaurantScreenBloc, RestaurantSearchState>(
    'emits [LoadingState, SuccessState] when LoadEvent is added and API succeeds',
    build: () {
      when(() => api.getRestaurants(
          page: any(named: 'page'),
          city: any(named: 'city'))).thenAnswer((_) async => mockPayload);
      return RestaurantScreenBloc(restaurantApi: api);
    },
    act: (bloc) => bloc.add(LoadEvent()),
    expect: () => [
      isA<LoadingState>(),
      isA<SuccessState>().having(
        (s) => s.model.currentRestaurants.length,
        'number of restaurants',
        1,
      ),
    ],
    verify: (_) {
      verify(() => api.getRestaurants(page: 1, city: null)).called(1);
    },
  );

  blocTest<RestaurantScreenBloc, RestaurantSearchState>(
    'emits updated model when ChangeCityEvent is added',
    build: () => RestaurantScreenBloc(restaurantApi: api),
    act: (bloc) => bloc.add(ChangeCityEvent(city: 'Seattle')),
    expect: () => [
      isA<SuccessState>().having(
        (s) => s.model.city,
        'city filter updated',
        'Seattle',
      )
    ],
  );

  blocTest<RestaurantScreenBloc, RestaurantSearchState>(
    'emits updated model when ChangeRatingEvent is added',
    build: () => RestaurantScreenBloc(restaurantApi: api),
    act: (bloc) => bloc.add(ChangeRatingEvent(rating: 4.0)),
    expect: () => [
      isA<SuccessState>().having(
        (s) => s.model.rating,
        'rating filter updated',
        4.0,
      )
    ],
  );

  blocTest<RestaurantScreenBloc, RestaurantSearchState>(
    'resets filters when ClearEvent is added',
    build: () => RestaurantScreenBloc(restaurantApi: api),
    seed: () => const SuccessState(
      model: RestaurantSearchModel(
        currentRestaurants: [],
        totalPages: 1,
        currentPage: 1,
        city: 'Seattle',
        rating: 4.5,
        minPrice: 0,
        maxPrice: 1000,
      ),
    ),
    act: (bloc) => bloc.add(ClearEvent()),
    expect: () => [
      isA<SuccessState>()
          .having(
            (s) => s.model.city,
            'cleared city',
            null,
          )
          .having(
            (s) => s.model.rating,
            'cleared rating',
            null,
          )
          .having(
            (s) => s.model.minPrice,
            'cleared minPrice',
            0,
          )
          .having(
            (s) => s.model.maxPrice,
            'cleared maxPrice',
            1000,
          )
    ],
  );

  blocTest<RestaurantScreenBloc, RestaurantSearchState>(
    'emits FailState when API throws on LoadEvent',
    build: () {
      when(() => api.getRestaurants(
          page: any(named: 'page'),
          city: any(named: 'city'))).thenThrow(Exception('API error'));
      return RestaurantScreenBloc(restaurantApi: api);
    },
    act: (bloc) => bloc.add(LoadEvent()),
    expect: () => [
      isA<LoadingState>(),
      isA<FailState>(),
    ],
  );
}
