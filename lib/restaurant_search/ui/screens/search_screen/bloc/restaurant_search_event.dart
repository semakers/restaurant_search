part of 'restaurant_search_bloc.dart';

abstract class RestaurantSearchEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadEvent extends RestaurantSearchEvent {}

class LoadMoreEvent extends RestaurantSearchEvent {}

class ClearEvent extends RestaurantSearchEvent {}

class ChangeCityEvent extends RestaurantSearchEvent {
  final String? city;

  ChangeCityEvent({
    required this.city,
  });

  @override
  List<Object?> get props => [
        city,
      ];
}

class ChangeRatingEvent extends RestaurantSearchEvent {
  final double? rating;

  ChangeRatingEvent({
    required this.rating,
  });

  @override
  List<Object?> get props => [
        rating,
      ];
}

class ChangePriceRangeEvent extends RestaurantSearchEvent {
  final double minPrice;
  final double maxPrice;

  ChangePriceRangeEvent({
    required this.minPrice,
    required this.maxPrice,
  });

  @override
  List<Object?> get props => [
        minPrice,
        maxPrice,
      ];
}
