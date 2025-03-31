// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_search_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RestaurantSearchModelCWProxy {
  RestaurantSearchModel currentPage(int currentPage);

  RestaurantSearchModel currentRestaurants(List<Restaurant> currentRestaurants);

  RestaurantSearchModel totalPages(int totalPages);

  RestaurantSearchModel city(String? city);

  RestaurantSearchModel rating(double? rating);

  RestaurantSearchModel minPrice(int minPrice);

  RestaurantSearchModel maxPrice(int maxPrice);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RestaurantSearchModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RestaurantSearchModel(...).copyWith(id: 12, name: "My name")
  /// ````
  RestaurantSearchModel call({
    int? currentPage,
    List<Restaurant>? currentRestaurants,
    int? totalPages,
    String? city,
    double? rating,
    int? minPrice,
    int? maxPrice,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRestaurantSearchModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRestaurantSearchModel.copyWith.fieldName(...)`
class _$RestaurantSearchModelCWProxyImpl
    implements _$RestaurantSearchModelCWProxy {
  const _$RestaurantSearchModelCWProxyImpl(this._value);

  final RestaurantSearchModel _value;

  @override
  RestaurantSearchModel currentPage(int currentPage) =>
      this(currentPage: currentPage);

  @override
  RestaurantSearchModel currentRestaurants(
          List<Restaurant> currentRestaurants) =>
      this(currentRestaurants: currentRestaurants);

  @override
  RestaurantSearchModel totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  RestaurantSearchModel city(String? city) => this(city: city);

  @override
  RestaurantSearchModel rating(double? rating) => this(rating: rating);

  @override
  RestaurantSearchModel minPrice(int minPrice) => this(minPrice: minPrice);

  @override
  RestaurantSearchModel maxPrice(int maxPrice) => this(maxPrice: maxPrice);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RestaurantSearchModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RestaurantSearchModel(...).copyWith(id: 12, name: "My name")
  /// ````
  RestaurantSearchModel call({
    Object? currentPage = const $CopyWithPlaceholder(),
    Object? currentRestaurants = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? minPrice = const $CopyWithPlaceholder(),
    Object? maxPrice = const $CopyWithPlaceholder(),
  }) {
    return RestaurantSearchModel(
      currentPage:
          currentPage == const $CopyWithPlaceholder() || currentPage == null
              ? _value.currentPage
              // ignore: cast_nullable_to_non_nullable
              : currentPage as int,
      currentRestaurants: currentRestaurants == const $CopyWithPlaceholder() ||
              currentRestaurants == null
          ? _value.currentRestaurants
          // ignore: cast_nullable_to_non_nullable
          : currentRestaurants as List<Restaurant>,
      totalPages:
          totalPages == const $CopyWithPlaceholder() || totalPages == null
              ? _value.totalPages
              // ignore: cast_nullable_to_non_nullable
              : totalPages as int,
      city: city == const $CopyWithPlaceholder()
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as double?,
      minPrice: minPrice == const $CopyWithPlaceholder() || minPrice == null
          ? _value.minPrice
          // ignore: cast_nullable_to_non_nullable
          : minPrice as int,
      maxPrice: maxPrice == const $CopyWithPlaceholder() || maxPrice == null
          ? _value.maxPrice
          // ignore: cast_nullable_to_non_nullable
          : maxPrice as int,
    );
  }
}

extension $RestaurantSearchModelCopyWith on RestaurantSearchModel {
  /// Returns a callable class that can be used as follows: `instanceOfRestaurantSearchModel.copyWith(...)` or like so:`instanceOfRestaurantSearchModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RestaurantSearchModelCWProxy get copyWith =>
      _$RestaurantSearchModelCWProxyImpl(this);
}
