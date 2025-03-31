import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_interview/restaurant_search/infrastructure/models/restaurant_payload.dart';

part 'restaurant_search_model.g.dart';

@CopyWith()
class RestaurantSearchModel extends Equatable {
  final int currentPage;
  final List<Restaurant> currentRestaurants;
  final int totalPages;
  final String? city;
  final double? rating;
  final int minPrice;
  final int maxPrice;

  const RestaurantSearchModel({
    required this.currentPage,
    required this.currentRestaurants,
    required this.totalPages,
    required this.city,
    required this.rating,
    required this.minPrice,
    required this.maxPrice,
  });

  @override
  List<Object?> get props => [
        currentPage,
        currentRestaurants,
        totalPages,
        city,
        rating,
        minPrice,
        maxPrice,
      ];
}
