import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview/restaurant_search/infrastructure/api/restaurant_api.dart';
import 'package:flutter_interview/restaurant_search/infrastructure/models/restaurant_payload.dart';
import 'package:flutter_interview/restaurant_search/ui/screens/search_screen/bloc/model/restaurant_search_model.dart';

part 'restaurant_search_event.dart';
part 'restaurant_search_state.dart';

class RestaurantScreenBloc
    extends Bloc<RestaurantSearchEvent, RestaurantSearchState> {
  RestaurantScreenBloc({
    required this.restaurantApi,
  }) : super(
          const LoadingState(
            model: RestaurantSearchModel(
              currentPage: 1,
              currentRestaurants: [],
              totalPages: 1,
              city: null,
              rating: null,
              minPrice: 0,
              maxPrice: 1000,
            ),
          ),
        ) {
    on<LoadEvent>(_loadEvent);
    on<LoadMoreEvent>(_loadMoreEvent);
    on<ClearEvent>(_clearEvent);
    on<ChangeCityEvent>(_changeCityEvent);
    on<ChangeRatingEvent>(_changeRatingEvent);
    on<ChangePriceRangeEvent>(_changePriceRangeEvent);
  }

  final RestaurantApi restaurantApi;

  void _loadEvent(LoadEvent event, emit) async {
    emit(
      LoadingState(
        model: state.model.copyWith(
          currentRestaurants: [],
        ),
      ),
    );

    try {
      final payload = await restaurantApi.getRestaurants(
        page: 1,
        city: state.model.city,
      );

      emit(
        SuccessState(
          model: state.model.copyWith(
            currentPage: 1,
            currentRestaurants: _filterRestaurants(
              payload.data,
            ),
            totalPages: payload.totalPages,
          ),
        ),
      );
    } catch (_) {
      emit(
        FailState(
          model: state.model,
        ),
      );
    }
  }

  void _loadMoreEvent(LoadMoreEvent event, emit) async {
    emit(
      LoadingMoreState(
        model: state.model,
      ),
    );

    try {
      if ((state.model.currentPage) < state.model.totalPages) {
        final payload = await restaurantApi.getRestaurants(
          city: state.model.city,
          page: state.model.currentPage + 1,
        );

        final restaurants = _filterRestaurants(
          payload.data,
        );

        emit(
          SuccessState(
            model: state.model.copyWith(
              currentPage: state.model.currentPage + 1,
              currentRestaurants: [
                ...state.model.currentRestaurants,
                ...restaurants,
              ],
            ),
          ),
        );

        if (restaurants.isEmpty) {
          add(
            LoadMoreEvent(),
          );
        }
      } else {
        emit(
          LastPageState(
            model: state.model,
          ),
        );
      }
    } catch (_) {
      emit(
        FailState(
          model: state.model,
        ),
      );
    }
  }

  List<Restaurant> _filterRestaurants(List<Restaurant> payloadRestaurants) {
    List<Restaurant> restaurants = List<Restaurant>.empty(
      growable: true,
    );

    if (state.model.rating != null) {
      restaurants.addAll(
        payloadRestaurants.where(
          (restaurant) =>
              restaurant.userRating.averageRating > state.model.rating!,
        ),
      );
    } else {
      restaurants.addAll(
        payloadRestaurants,
      );
    }

    restaurants = restaurants
        .where(
          (restaurant) =>
              restaurant.estimatedCost >= state.model.minPrice &&
              restaurant.estimatedCost <= state.model.maxPrice,
        )
        .toList();
    return restaurants;
  }

  void _clearEvent(ClearEvent event, emit) {
    emit(
      SuccessState(
        model: state.model.copyWith(
          city: null,
          rating: null,
          minPrice: 0,
          maxPrice: 1000,
        ),
      ),
    );
  }

  void _changeCityEvent(ChangeCityEvent event, emit) {
    emit(
      SuccessState(
        model: state.model.copyWith(
          city: event.city,
        ),
      ),
    );
  }

  void _changeRatingEvent(ChangeRatingEvent event, emit) {
    emit(
      SuccessState(
        model: state.model.copyWith(
          rating: event.rating,
        ),
      ),
    );
  }

  void _changePriceRangeEvent(ChangePriceRangeEvent event, emit) {
    emit(
      SuccessState(
          model: state.model.copyWith(
        minPrice: event.minPrice.toInt(),
        maxPrice: event.maxPrice.toInt(),
      )),
    );
  }
}
